// =============================================================================
// rv_scoreboard.sv  -  compara DUT x modelo de referencia, instrucao a instrucao
// -----------------------------------------------------------------------------
// CONCEITO UVM: scoreboard
//   Recebe transacoes dos monitores (analysis imps), calcula o esperado com o
//   modelo de referencia e reporta divergencias com `uvm_error. Ao final
//   (report_phase) imprime um resumo.
//
// CONCEITO UVM: `uvm_analysis_imp_decl
//   Um componente so pode ter UM metodo write(). Para receber de duas fontes
//   (programa carregado + commits), a macro cria tipos de imp com sufixo:
//   write_prog() e write_commit().
//
// CONCEITO: ressincronizacao
//   Depois de uma divergencia, o modelo e o DUT ficam em estados diferentes e
//   TODAS as instrucoes seguintes falhariam (cascata de erros inuteis). Por isso,
//   apos reportar, copiamos o estado do DUT para o modelo (PC e rd). Assim cada
//   bug aparece uma vez, perto da causa.
// =============================================================================
`uvm_analysis_imp_decl(_prog)
`uvm_analysis_imp_decl(_commit)

class rv_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(rv_scoreboard)

    uvm_analysis_imp_prog   #(rv_prog_item,   rv_scoreboard) prog_imp;
    uvm_analysis_imp_commit #(rv_commit_item, rv_scoreboard) commit_imp;

    rv_ref_model model;
    bit          model_ready;

    // estatisticas
    int unsigned n_checked, n_errors, n_x_warnings;
    int unsigned err_by_op[string];     // "SRAI/RD_VALUE" -> quantidade
    int unsigned max_prints_per_kind = 3;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        prog_imp   = new("prog_imp", this);
        commit_imp = new("commit_imp", this);
        model      = rv_ref_model::type_id::create("model");
    endfunction

    // Um novo programa foi carregado (DUT em reset).
    function void write_prog(rv_prog_item p);
        model.load(p);
        model_ready = 1;
    endfunction

    // Registra uma divergencia. Imprime so as primeiras de cada tipo.
    function void mismatch(rv_op_e op, string kind, string msg);
        string key;
        key = op.name();
        key = {key, "/", kind};
        n_errors++;
        if (!err_by_op.exists(key)) err_by_op[key] = 0;
        err_by_op[key]++;
        if (err_by_op[key] <= max_prints_per_kind)
            `uvm_error(kind, msg)
    endfunction

    function void write_commit(rv_commit_item t);
        rv_ref_model::rv_exp_t e;
        bit    dut_wr, exp_wr;
        string ctx;
        if (!model_ready) return;

        // 0) PC: o DUT esta executando a instrucao que o modelo espera?
        if (t.pc !== model.pc) begin
            mismatch(decode(t.instr), "PC",
                     $sformatf("DUT executou PC=%08h, modelo esperava PC=%08h", t.pc, model.pc));
            model.pc = t.pc;
        end

        e   = model.step(t.mem_rdata);
        ctx = $sformatf("PC=%08h  %s", e.pc, disasm(e.instr));
        n_checked++;

        // 1) instrucao buscada
        if (t.instr !== e.instr)
            mismatch(e.op, "FETCH", $sformatf("%s | DUT buscou %08h", ctx, t.instr));

        // 2) escrita em registrador
        dut_wr = t.reg_we && t.rd() != 0;
        exp_wr = e.rd_we  && e.rd   != 0;
        if (dut_wr && !exp_wr) begin
            mismatch(e.op, "RD_WRITE", $sformatf("%s | DUT escreveu x%0d=%08h e nao deveria escrever",
                                                 ctx, t.rd(), t.rd_wdata));
            model.regs[t.rd()] = t.rd_wdata;
        end else if (!dut_wr && exp_wr) begin
            mismatch(e.op, "RD_WRITE", $sformatf("%s | DUT NAO escreveu x%0d (esperado %08h)",
                                                 ctx, e.rd, e.rd_val));
            model.regs[e.rd] = e.rd_old;
        end else if (exp_wr) begin
            if ($isunknown(e.rd_val)) begin
                n_x_warnings++;
                `uvm_warning("RD_X", {ctx, " | modelo calculou X (registrador lido sem ter sido escrito)"})
                model.regs[e.rd] = t.rd_wdata;
            end else if (t.rd_wdata !== e.rd_val) begin
                mismatch(e.op, "RD_VALUE", $sformatf("%s | x%0d: DUT=%08h esperado=%08h",
                                                     ctx, e.rd, t.rd_wdata, e.rd_val));
                model.regs[e.rd] = t.rd_wdata;
            end
        end

        // 3) escrita em memoria
        if (t.mem_we != e.mem_we) begin
            mismatch(e.op, "MEM_WRITE", $sformatf("%s | DUT MemWrite=%0b esperado=%0b",
                                                  ctx, t.mem_we, e.mem_we));
        end else if (e.mem_we) begin
            bit [31:0] mask;
            mask = (e.mem_size == 1) ? 32'hFF : (e.mem_size == 2) ? 32'hFFFF : '1;
            if (t.mem_addr !== e.mem_addr)
                mismatch(e.op, "MEM_ADDR", $sformatf("%s | endereco DUT=%08h esperado=%08h",
                                                     ctx, t.mem_addr, e.mem_addr));
            if ((t.mem_wdata & mask) !== (e.mem_wdata & mask))
                mismatch(e.op, "MEM_DATA", $sformatf("%s | dado DUT=%08h esperado=%08h",
                                                     ctx, t.mem_wdata & mask, e.mem_wdata & mask));
        end

        // 4) proximo PC (desvios e saltos)
        if (t.pc_next !== e.next_pc) begin
            mismatch(e.op, "NEXT_PC", $sformatf("%s | proximo PC DUT=%08h esperado=%08h",
                                                ctx, t.pc_next, e.next_pc));
            model.pc = t.pc_next;
        end
    endfunction

    function void report_phase(uvm_phase phase);
        string s;
        s = $sformatf("\n  Instrucoes comparadas : %0d\n  Divergencias          : %0d\n  Avisos de X           : %0d",
                             n_checked, n_errors, n_x_warnings);
        if (err_by_op.num()) begin
            s = {s, "\n  Divergencias por instrucao/tipo:"};
            foreach (err_by_op[k]) s = {s, $sformatf("\n    %-22s %0d", k, err_by_op[k])};
        end
        `uvm_info("SCOREBOARD", s, UVM_NONE)
    endfunction
endclass
