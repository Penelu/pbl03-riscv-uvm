// =============================================================================
// rv_random_prog_seq.sv  -  programas ALEATORIOS COM RESTRICOES
// -----------------------------------------------------------------------------
// CONCEITO: constrained random
//   Em vez de escrever cada instrucao, descrevemos as REGRAS que um programa
//   valido precisa seguir (constraints) e deixamos o solver sortear o resto.
//   Cada semente (+sv_seed) gera um programa diferente; o scoreboard verifica
//   tudo automaticamente. E assim que se acham bugs que ninguem imaginou.
//
// Regras para o programa nunca "sair dos trilhos":
//   - x31 = 0x1000 (base da RAM de dados) e x30 = 0x200 (base para JALR) sao
//     reservados: nenhuma instrucao aleatoria escreve neles (rd <= 29).
//   - load/store usam sempre x31 como base e offset alinhado
//     -> enderecos 0x800..0x17FF, sempre dentro da RAM.
//   - desvios e JAL so saltam PARA FRENTE (8..16 bytes) -> sem lacos infinitos.
//     O fim do programa tem 5 NOPs para pousar com seguranca.
//   - JALR calcula um alvo absoluto 8..16 bytes a frente, usando x0 ou x30.
// =============================================================================
class rv_instr extends uvm_object;
    `uvm_object_utils(rv_instr)

    rv_op_e allowed[$];          // preenchido pela sequence antes de randomizar

    rand rv_op_e   op;
    rand bit [4:0] rd, rs1, rs2;
    rand int       imm;
    rand bit       same_regs;    // forca rs1 == rs2 em desvios (senao quase nunca saltam)
    rand bit       jalr_via_x30;
    rand int       skip;         // bytes a frente (desvios / JAL / JALR)

    constraint c_op   { op inside {allowed}; }
    constraint c_rd   { rd dist {0 := 1, [1:29] :/ 29}; }
    constraint c_skip { skip inside {8, 12, 16}; }
    constraint c_same { same_regs dist {1 := 3, 0 := 7}; }

    constraint c_mem {
        if (is_load(op) || is_store(op)) {
            rs1 == 31;
            imm inside {[-2048:2044]};
            if (op inside {LW, SW})       imm % 4 == 0;
            if (op inside {LH, LHU, SH})  imm % 2 == 0;
        }
    }
    constraint c_branch {
        if (is_branch(op)) { imm == skip; if (same_regs) rs2 == rs1; }
        if (op == JAL)       imm == skip;
    }
    constraint c_shift { if (op inside {SLLI, SRLI, SRAI}) imm inside {[0:31]}; }
    constraint c_upper { if (op inside {LUI, AUIPC})       imm inside {[0:20'hFFFFF]}; }
    constraint c_imm12 {
        if (op inside {ADDI, SLTI, SLTIU, XORI, ORI, ANDI})
            imm dist {0 := 2, -1 := 2, 2047 := 2, -2048 := 2, [-2048:2047] :/ 20};
    }
    // Ordem de solucao: sortear a operacao primeiro deixa a distribuicao
    // de operacoes uniforme (senao ops com mais combinacoes "ganham").
    constraint c_order { solve op before rd, rs1, rs2, imm, same_regs, skip; }

    function new(string name = "rv_instr");
        super.new(name);
    endfunction
endclass

class rv_random_prog_seq extends rv_prog_base_seq;
    `uvm_object_utils(rv_random_prog_seq)

    int unsigned n_instr = 150;
    bit          only_dut_supported = 1;
    int unsigned prog_id;

    function new(string name = "rv_random_prog_seq");
        super.new(name);
    endfunction

    // Valores "interessantes" aparecem com mais frequencia que um numero qualquer.
    function bit [31:0] interesting_value();
        randcase
            1: return 0;
            1: return 1;
            1: return 32'hFFFF_FFFF;
            1: return 32'h7FFF_FFFF;
            1: return 32'h8000_0000;
            6: return $urandom();
        endcase
    endfunction

    function void build_program();
        rv_instr ins;
        ins = rv_instr::type_id::create("ins");
        ins.allowed  = get_ops(only_dut_supported);
        p.prog_name  = $sformatf("aleatorio_%0d", prog_id);

        // Memoria de dados: bytes aleatorios na janela acessivel.
        for (int a = 32'h800; a < 32'h1800; a++) p.dmem_init[a] = $urandom();

        // Prologo: todos os registradores com valor conhecido.
        for (int r = 1; r <= 29; r++) li(r, interesting_value());
        li(30, 32'h200);
        li(31, 32'h1000);

        // Corpo aleatorio.
        repeat (n_instr) begin
            if (!ins.randomize())
                `uvm_fatal("RAND", "randomize() falhou: constraints contraditorias?")
            if (ins.op == JALR) begin
                int target;
                target = here() + ins.skip;
                if (ins.jalr_via_x30) emit(JALR, ins.rd, 30, 0, target - 32'h200 + (ins.imm & 1));
                else                  emit(JALR, ins.rd, 0,  0, target + (ins.imm & 1));
            end else
                emit(ins.op, ins.rd, ins.rs1, ins.rs2, ins.imm);
        end
        finish();
    endfunction
endclass
