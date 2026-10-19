// =============================================================================
// rv_isa_pkg.sv
// -----------------------------------------------------------------------------
// Pacote SEM UVM com tudo que diz respeito ao conjunto de instrucoes (ISA)
// RV32I: enum de mnemonicos, codificador, decodificador e "disassembler".
//
// Por que separar isso do UVM?
//   - O gerador de programas (sequence), o modelo de referencia (ref model) e a
//     cobertura precisam "falar" RISC-V. Se cada um tivesse a sua propria
//     decodificacao, um erro seria copiado em tres lugares.
//   - Este pacote e independente do DUT: e escrito a partir da ESPECIFICACAO
//     (manual RISC-V), nunca a partir do RTL do colega. Isso e essencial: se o
//     modelo copiar o RTL, ele copia tambem os bugs.
// =============================================================================
package rv_isa_pkg;

    typedef enum {
        LUI, AUIPC, JAL, JALR,
        BEQ, BNE, BLT, BGE, BLTU, BGEU,
        LB, LH, LW, LBU, LHU,
        SB, SH, SW,
        ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI,
        ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND,
        ECALL, ILLEGAL
    } rv_op_e;

    typedef rv_op_e rv_op_q[$];

    // Instrucoes que o decoder_control.sv do colega DECLARA suportar.
    // (Lido do RTL apenas para escolher QUAIS testar, nunca COMO se comportam.)
    function automatic bit is_dut_supported(rv_op_e op);
        return op inside {LUI, AUIPC, JAL, JALR, BEQ, BNE, BGE, BLTU,
                          LB, LW, SB, SW,
                          ADDI, SLTI, XORI, ORI, ANDI, SLLI, SRLI,
                          ADD, SUB, SLL, SLT, XOR, SRL, OR, AND};
    endfunction

    // Lista de operacoes para o gerador aleatorio.
    function automatic rv_op_q get_ops(bit only_dut_supported);
        rv_op_q q;
        rv_op_e op;
        op = op.first();
        do begin
            if (!(op inside {ECALL, ILLEGAL}) &&
                (!only_dut_supported || is_dut_supported(op)))
                q.push_back(op);
            op = op.next();
        end while (op != op.first());
        return q;
    endfunction

    function automatic bit is_branch(rv_op_e op);
        return op inside {BEQ, BNE, BLT, BGE, BLTU, BGEU};
    endfunction
    function automatic bit is_load(rv_op_e op);
        return op inside {LB, LH, LW, LBU, LHU};
    endfunction
    function automatic bit is_store(rv_op_e op);
        return op inside {SB, SH, SW};
    endfunction

    // ------------------------------------------------------------------ campos
    function automatic bit [4:0] f_rd (bit [31:0] i); return i[11:7];  endfunction
    function automatic bit [4:0] f_rs1(bit [31:0] i); return i[19:15]; endfunction
    function automatic bit [4:0] f_rs2(bit [31:0] i); return i[24:20]; endfunction

    // Imediatos ja estendidos em sinal (Tabela 24.2 da spec RISC-V).
    function automatic bit [31:0] imm_i(bit [31:0] i);
        return {{20{i[31]}}, i[31:20]};
    endfunction
    function automatic bit [31:0] imm_s(bit [31:0] i);
        return {{20{i[31]}}, i[31:25], i[11:7]};
    endfunction
    function automatic bit [31:0] imm_b(bit [31:0] i);
        return {{19{i[31]}}, i[31], i[7], i[30:25], i[11:8], 1'b0};
    endfunction
    function automatic bit [31:0] imm_u(bit [31:0] i);
        return {i[31:12], 12'b0};
    endfunction
    function automatic bit [31:0] imm_j(bit [31:0] i);
        return {{11{i[31]}}, i[31], i[19:12], i[20], i[30:21], 1'b0};
    endfunction

    // -------------------------------------------------------------- decodificar
    function automatic rv_op_e decode(bit [31:0] i);
        bit [6:0] opc = i[6:0];
        bit [2:0] f3  = i[14:12];
        bit [6:0] f7  = i[31:25];
        case (opc)
            7'b0110111: return LUI;
            7'b0010111: return AUIPC;
            7'b1101111: return JAL;
            7'b1100111: return (f3 == 3'b000) ? JALR : ILLEGAL;
            7'b1100011: case (f3)
                3'b000: return BEQ;  3'b001: return BNE;
                3'b100: return BLT;  3'b101: return BGE;
                3'b110: return BLTU; 3'b111: return BGEU;
                default: return ILLEGAL;
            endcase
            7'b0000011: case (f3)
                3'b000: return LB;  3'b001: return LH;  3'b010: return LW;
                3'b100: return LBU; 3'b101: return LHU;
                default: return ILLEGAL;
            endcase
            7'b0100011: case (f3)
                3'b000: return SB; 3'b001: return SH; 3'b010: return SW;
                default: return ILLEGAL;
            endcase
            7'b0010011: case (f3)
                3'b000: return ADDI;  3'b010: return SLTI; 3'b011: return SLTIU;
                3'b100: return XORI;  3'b110: return ORI;  3'b111: return ANDI;
                3'b001: return (f7 == 7'b0000000) ? SLLI : ILLEGAL;
                3'b101: return (f7 == 7'b0000000) ? SRLI :
                               (f7 == 7'b0100000) ? SRAI : ILLEGAL;
            endcase
            7'b0110011: begin
                if (f7 == 7'b0000000) case (f3)
                    3'b000: return ADD; 3'b001: return SLL; 3'b010: return SLT;
                    3'b011: return SLTU; 3'b100: return XOR; 3'b101: return SRL;
                    3'b110: return OR;  3'b111: return AND;
                endcase
                if (f7 == 7'b0100000 && f3 == 3'b000) return SUB;
                if (f7 == 7'b0100000 && f3 == 3'b101) return SRA;
                return ILLEGAL;
            end
            7'b1110011: return (i == 32'h00000073) ? ECALL : ILLEGAL;
            default:    return ILLEGAL;
        endcase
    endfunction

    // --------------------------------------------------------------- codificar
    // imm e sempre o valor "real" (deslocamento em bytes, valor do shamt, ...).
    // Para LUI/AUIPC, imm e o campo de 20 bits (o que vai para rd[31:12]).
    function automatic bit [31:0] encode(rv_op_e op, bit [4:0] rd, bit [4:0] rs1,
                                         bit [4:0] rs2, int imm);
        bit [31:0] m = imm;
        case (op)
            LUI:   return {m[19:0], rd, 7'b0110111};
            AUIPC: return {m[19:0], rd, 7'b0010111};
            JAL:   return {m[20], m[10:1], m[11], m[19:12], rd, 7'b1101111};
            JALR:  return {m[11:0], rs1, 3'b000, rd, 7'b1100111};
            BEQ, BNE, BLT, BGE, BLTU, BGEU: begin
                bit [2:0] f3;
                case (op) BEQ: f3 = 0; BNE: f3 = 1; BLT: f3 = 4;
                          BGE: f3 = 5; BLTU: f3 = 6; default: f3 = 7; endcase
                return {m[12], m[10:5], rs2, rs1, f3, m[4:1], m[11], 7'b1100011};
            end
            LB:  return {m[11:0], rs1, 3'b000, rd, 7'b0000011};
            LH:  return {m[11:0], rs1, 3'b001, rd, 7'b0000011};
            LW:  return {m[11:0], rs1, 3'b010, rd, 7'b0000011};
            LBU: return {m[11:0], rs1, 3'b100, rd, 7'b0000011};
            LHU: return {m[11:0], rs1, 3'b101, rd, 7'b0000011};
            SB:  return {m[11:5], rs2, rs1, 3'b000, m[4:0], 7'b0100011};
            SH:  return {m[11:5], rs2, rs1, 3'b001, m[4:0], 7'b0100011};
            SW:  return {m[11:5], rs2, rs1, 3'b010, m[4:0], 7'b0100011};
            ADDI:  return {m[11:0], rs1, 3'b000, rd, 7'b0010011};
            SLTI:  return {m[11:0], rs1, 3'b010, rd, 7'b0010011};
            SLTIU: return {m[11:0], rs1, 3'b011, rd, 7'b0010011};
            XORI:  return {m[11:0], rs1, 3'b100, rd, 7'b0010011};
            ORI:   return {m[11:0], rs1, 3'b110, rd, 7'b0010011};
            ANDI:  return {m[11:0], rs1, 3'b111, rd, 7'b0010011};
            SLLI:  return {7'b0000000, m[4:0], rs1, 3'b001, rd, 7'b0010011};
            SRLI:  return {7'b0000000, m[4:0], rs1, 3'b101, rd, 7'b0010011};
            SRAI:  return {7'b0100000, m[4:0], rs1, 3'b101, rd, 7'b0010011};
            ADD:  return {7'b0000000, rs2, rs1, 3'b000, rd, 7'b0110011};
            SUB:  return {7'b0100000, rs2, rs1, 3'b000, rd, 7'b0110011};
            SLL:  return {7'b0000000, rs2, rs1, 3'b001, rd, 7'b0110011};
            SLT:  return {7'b0000000, rs2, rs1, 3'b010, rd, 7'b0110011};
            SLTU: return {7'b0000000, rs2, rs1, 3'b011, rd, 7'b0110011};
            XOR:  return {7'b0000000, rs2, rs1, 3'b100, rd, 7'b0110011};
            SRL:  return {7'b0000000, rs2, rs1, 3'b101, rd, 7'b0110011};
            SRA:  return {7'b0100000, rs2, rs1, 3'b101, rd, 7'b0110011};
            OR:   return {7'b0000000, rs2, rs1, 3'b110, rd, 7'b0110011};
            AND:  return {7'b0000000, rs2, rs1, 3'b111, rd, 7'b0110011};
            ECALL: return 32'h00000073;
            default: return 32'h00000000;
        endcase
    endfunction

    // NOP canonico (addi x0, x0, 0) e laco infinito (jal x0, 0).
    localparam bit [31:0] NOP       = 32'h00000013;
    localparam bit [31:0] SELF_LOOP = 32'h0000006F;

    // ------------------------------------------------------------ disassembler
    // Usado nas mensagens de erro: "PC=0x000000a4 bltu x7, x12, 16".
    // (Variaveis declaradas e so depois atribuidas: inicializar na declaracao
    //  com chamadas encadeadas derruba o compilador do XSim 2026.1.)
    function automatic string disasm(bit [31:0] i);
        rv_op_e op;
        string  n;
        int     rd, rs1, rs2;
        op  = decode(i);
        n   = op.name();
        n   = n.tolower();
        rd  = f_rd(i);
        rs1 = f_rs1(i);
        rs2 = f_rs2(i);
        case (op)
            LUI, AUIPC:   return $sformatf("%s x%0d, 0x%05h", n, rd, i[31:12]);
            JAL:          return $sformatf("%s x%0d, %0d", n, rd, $signed(imm_j(i)));
            JALR:         return $sformatf("%s x%0d, %0d(x%0d)", n, rd, $signed(imm_i(i)), rs1);
            BEQ, BNE, BLT, BGE, BLTU, BGEU:
                          return $sformatf("%s x%0d, x%0d, %0d", n, rs1, rs2, $signed(imm_b(i)));
            LB, LH, LW, LBU, LHU:
                          return $sformatf("%s x%0d, %0d(x%0d)", n, rd, $signed(imm_i(i)), rs1);
            SB, SH, SW:   return $sformatf("%s x%0d, %0d(x%0d)", n, rs2, $signed(imm_s(i)), rs1);
            SLLI, SRLI, SRAI:
                          return $sformatf("%s x%0d, x%0d, %0d", n, rd, rs1, rs2);
            ADDI, SLTI, SLTIU, XORI, ORI, ANDI:
                          return $sformatf("%s x%0d, x%0d, %0d", n, rd, rs1, $signed(imm_i(i)));
            ECALL:        return "ecall";
            ILLEGAL:      return $sformatf("illegal(0x%08h)", i);
            default:      return $sformatf("%s x%0d, x%0d, x%0d", n, rd, rs1, rs2);
        endcase
    endfunction

endpackage
