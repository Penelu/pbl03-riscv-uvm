// =============================================================================
// rv_ref_model.sv  -  MODELO DE REFERENCIA (golden model / ISS)
// -----------------------------------------------------------------------------
// CONCEITO: modelo de referencia
//   Um simulador de instrucoes (ISS) escrito a partir da ESPECIFICACAO RV32I,
//   sem olhar o RTL. A cada instrucao que o DUT conclui, o scoreboard manda o
//   modelo executar UM passo e compara os dois resultados ("lockstep").
//
//   O modelo nao tem nocao de tempo nem de clock: e so uma funcao
//   "estado -> proximo estado". Isso o torna simples e confiavel.
//
// Decisoes (assumidas, ver README / perguntas ao colega):
//   - Mapa de memoria: RAM de dados 0x0000..0x3FFF; MMIO em 0xF000_0000+.
//   - Leituras de MMIO (chaves, D-Pad, contador RTC) sao ENTRADAS externas
//     nao deterministicas: o modelo usa o valor que o DUT leu.
//   - ECALL e instrucoes ilegais: tratadas como NOP (o DUT nao implementa
//     traps). O modelo apenas avisa.
//   - Registradores comecam com X (o regfile do colega nao tem reset). Se um
//     programa ler um registrador nunca escrito, o resultado fica X e o
//     scoreboard avisa em vez de acusar erro.
// =============================================================================
class rv_ref_model extends uvm_object;
    `uvm_object_utils(rv_ref_model)

    // "o que o DUT deveria ter feito nesta instrucao"
    typedef struct {
        bit [31:0]   pc;
        bit [31:0]   instr;
        rv_op_e      op;
        bit          rd_we;
        bit [4:0]    rd;
        logic [31:0] rd_val;
        logic [31:0] rd_old;     // valor anterior (para ressincronizar)
        bit          mem_we;
        bit [31:0]   mem_addr;
        logic [31:0] mem_wdata;
        int          mem_size;   // 1, 2 ou 4 bytes
        bit          is_mmio_load;
        bit [31:0]   next_pc;
    } rv_exp_t;

    logic [31:0] regs[32];
    bit   [31:0] pc;
    bit   [31:0] imem[256];
    logic [7:0]  dmem[16384];
    logic [31:0] leds[4];

    function new(string name = "rv_ref_model");
        super.new(name);
    endfunction

    function void load(rv_prog_item p);
        imem = p.img_imem;
        dmem = p.img_dmem;
        foreach (regs[i]) regs[i] = 'x;
        regs[0] = 0;
        pc = 0;
    endfunction

    // ------------------------------------------------------------ memoria
    local function bit is_ram(bit [31:0] a, int size);
        return (a + size <= 16384);
    endfunction

    local function logic [31:0] load_mem(bit [31:0] a, int size, bit sign,
                                         logic [31:0] io_rdata, output bit is_mmio);
        logic [31:0] v;
        is_mmio = (a >= 32'hF000_0000);
        if (is_mmio)               return io_rdata;
        if (!is_ram(a, size))      return 32'd0;   // fora do mapa: DUT devolve 0
        case (size)
            1: v = sign ? {{24{dmem[a][7]}}, dmem[a]} : {24'd0, dmem[a]};
            2: v = sign ? {{16{dmem[a+1][7]}}, dmem[a+1], dmem[a]}
                        : {16'd0, dmem[a+1], dmem[a]};
            default: v = {dmem[a+3], dmem[a+2], dmem[a+1], dmem[a]};
        endcase
        return v;
    endfunction

    local function void store_mem(bit [31:0] a, int size, logic [31:0] d);
        if (a >= 32'hF000_0000 && a <= 32'hF000_000C && a[1:0] == 0) begin
            leds[a[3:2]] = d;
            return;
        end
        if (!is_ram(a, size)) return;
        for (int k = 0; k < size; k++) dmem[a + k] = d[8*k +: 8];
    endfunction

    // ------------------------------------------------------------ um passo
    function rv_exp_t step(logic [31:0] io_rdata);
        rv_exp_t     e;
        bit   [31:0] i;
        logic [31:0] a, b, res;
        bit          wr = 0;
        bit   [4:0]  sh;

        i       = (pc[31:2] < 256) ? imem[pc[31:2]] : 32'h0;
        e.pc    = pc;
        e.instr = i;
        e.op    = decode(i);
        e.rd    = f_rd(i);
        a       = regs[f_rs1(i)];
        b       = regs[f_rs2(i)];
        sh      = b[4:0];
        e.next_pc = pc + 4;

        case (e.op)
            LUI:   begin res = imm_u(i);      wr = 1; end
            AUIPC: begin res = pc + imm_u(i); wr = 1; end
            JAL:   begin res = pc + 4; wr = 1; e.next_pc = pc + imm_j(i); end
            JALR:  begin res = pc + 4; wr = 1; e.next_pc = (a + imm_i(i)) & ~32'd1; end

            BEQ:  if (a == b)                    e.next_pc = pc + imm_b(i);
            BNE:  if (a != b)                    e.next_pc = pc + imm_b(i);
            BLT:  if ($signed(a) <  $signed(b))  e.next_pc = pc + imm_b(i);
            BGE:  if ($signed(a) >= $signed(b))  e.next_pc = pc + imm_b(i);
            BLTU: if (a <  b)                    e.next_pc = pc + imm_b(i);
            BGEU: if (a >= b)                    e.next_pc = pc + imm_b(i);

            LB:  begin res = load_mem(a + imm_i(i), 1, 1, io_rdata, e.is_mmio_load); wr = 1; end
            LH:  begin res = load_mem(a + imm_i(i), 2, 1, io_rdata, e.is_mmio_load); wr = 1; end
            LW:  begin res = load_mem(a + imm_i(i), 4, 1, io_rdata, e.is_mmio_load); wr = 1; end
            LBU: begin res = load_mem(a + imm_i(i), 1, 0, io_rdata, e.is_mmio_load); wr = 1; end
            LHU: begin res = load_mem(a + imm_i(i), 2, 0, io_rdata, e.is_mmio_load); wr = 1; end

            SB, SH, SW: begin
                e.mem_we    = 1;
                e.mem_addr  = a + imm_s(i);
                e.mem_size  = (e.op == SB) ? 1 : (e.op == SH) ? 2 : 4;
                e.mem_wdata = b;
                store_mem(e.mem_addr, e.mem_size, b);
            end

            ADDI:  begin res = a + imm_i(i);                                   wr = 1; end
            SLTI:  begin res = ($signed(a) < $signed(imm_i(i))) ? 1 : 0;       wr = 1; end
            SLTIU: begin res = (a < imm_i(i)) ? 1 : 0;                         wr = 1; end
            XORI:  begin res = a ^ imm_i(i);                                   wr = 1; end
            ORI:   begin res = a | imm_i(i);                                   wr = 1; end
            ANDI:  begin res = a & imm_i(i);                                   wr = 1; end
            SLLI:  begin res = a << i[24:20];                                  wr = 1; end
            SRLI:  begin res = a >> i[24:20];                                  wr = 1; end
            SRAI:  begin res = $signed(a) >>> i[24:20];                        wr = 1; end

            ADD:  begin res = a + b;                                           wr = 1; end
            SUB:  begin res = a - b;                                           wr = 1; end
            SLL:  begin res = a << sh;                                         wr = 1; end
            SLT:  begin res = ($signed(a) < $signed(b)) ? 1 : 0;               wr = 1; end
            SLTU: begin res = (a < b) ? 1 : 0;                                 wr = 1; end
            XOR:  begin res = a ^ b;                                           wr = 1; end
            SRL:  begin res = a >> sh;                                         wr = 1; end
            SRA:  begin res = $signed(a) >>> sh;                               wr = 1; end
            OR:   begin res = a | b;                                           wr = 1; end
            AND:  begin res = a & b;                                           wr = 1; end

            default: `uvm_warning("REF_NOP", $sformatf("PC=%08h %s tratado como NOP",
                                                      pc, disasm(i)))
        endcase

        e.rd_we  = wr;
        e.rd_old = regs[e.rd];
        e.rd_val = res;
        if (wr && e.rd != 0) regs[e.rd] = res;
        pc = e.next_pc;
        return e;
    endfunction
endclass
