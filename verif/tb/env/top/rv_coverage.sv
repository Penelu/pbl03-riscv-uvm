// =============================================================================
// rv_coverage.sv  -  COBERTURA FUNCIONAL das instrucoes executadas
// -----------------------------------------------------------------------------
// CONCEITO: cobertura funcional
//   O scoreboard responde "o que foi executado estava certo?".
//   A cobertura responde "o que foi executado?". Um teste que passa mas nunca
//   executou BGE com operandos negativos nao diz nada sobre BGE com negativos.
//
// CONCEITO UVM: uvm_subscriber
//   Componente pronto com um analysis_export e um write() para implementar.
//   Basta liga-lo a analysis port do monitor.
//
// Covergroups:
//   cg_instr  : toda instrucao executada (qual operacao, se rd = x0)
//   cg_branch : desvio tomado e nao tomado para cada tipo de branch
//   cg_cmp    : sinal dos operandos (0 / + / -) nas comparacoes, onde
//               signed x unsigned faz diferenca
// =============================================================================
class rv_coverage extends uvm_subscriber #(rv_commit_item);
    `uvm_component_utils(rv_coverage)

    rv_op_e      op;
    bit          taken, rd_zero;
    bit [1:0]    s1, s2;            // 0 = zero, 1 = positivo, 2 = negativo
    int unsigned hits[rv_op_e];

    covergroup cg_instr;
        // bins explicitos: um por instrucao RV32I (LUI..AND na ordem do enum)
        cp_op: coverpoint op { bins op[] = {[LUI:AND]}; }
        cp_rd0: coverpoint rd_zero { bins rd_x0 = {1}; bins rd_outro = {0}; }
    endgroup

    covergroup cg_branch;
        cp_op: coverpoint op { bins b[] = {BEQ, BNE, BLT, BGE, BLTU, BGEU}; }
        cp_taken: coverpoint taken { bins nao_tomado = {0}; bins tomado = {1}; }
        x_op_taken: cross cp_op, cp_taken;
    endgroup

    covergroup cg_cmp;
        cp_op: coverpoint op { bins c[] = {SLT, SLTU, BLT, BGE, BLTU, BGEU}; }
        cp_s1: coverpoint s1 { bins zero = {0}; bins pos = {1}; bins neg = {2}; }
        cp_s2: coverpoint s2 { bins zero = {0}; bins pos = {1}; bins neg = {2}; }
        x_sinais: cross cp_op, cp_s1, cp_s2;
    endgroup

    function new(string name, uvm_component parent);
        super.new(name, parent);
        cg_instr  = new();
        cg_branch = new();
        cg_cmp    = new();
    endfunction

    static function bit [1:0] sign_class(logic [31:0] v);
        if ($isunknown(v)) return 0;
        return (v == 0) ? 0 : v[31] ? 2 : 1;
    endfunction

    function void write(rv_commit_item t);
        op      = decode(t.instr);
        rd_zero = (t.rd() == 0);
        taken   = (t.pc_next != t.pc + 4);
        s1      = sign_class(t.rs1_val);
        s2      = sign_class(t.rs2_val);
        if (!hits.exists(op)) hits[op] = 0;
        hits[op]++;
        cg_instr.sample();
        if (is_branch(op))                    cg_branch.sample();
        if (op inside {SLT, SLTU} || is_branch(op)) cg_cmp.sample();
    endfunction

    function void report_phase(uvm_phase phase);
        string s, nunca;
        rv_op_e o;
        nunca = "";
        o = o.first();
        do begin
            if (!(o inside {ECALL, ILLEGAL}) && !hits.exists(o))
                nunca = {nunca, " ", o.name()};
            o = o.next();
        end while (o != o.first());
        s = $sformatf("\n  cg_instr  : %5.1f%% (op %5.1f%%, rd=x0 %5.1f%%)\n  cg_branch : %5.1f%%\n  cg_cmp    : %5.1f%%\n  Nunca executadas:%s",
                      cg_instr.get_inst_coverage(), cg_instr.cp_op.get_inst_coverage(),
                      cg_instr.cp_rd0.get_inst_coverage(), cg_branch.get_inst_coverage(),
                      cg_cmp.get_inst_coverage(), (nunca == "") ? " (nenhuma)" : nunca);
        `uvm_info("COVERAGE", s, UVM_NONE)
    endfunction
endclass
