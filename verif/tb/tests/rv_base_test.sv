// =============================================================================
// rv_base_test.sv  -  TESTE BASE
// -----------------------------------------------------------------------------
// CONCEITO UVM: test
//   O teste e o topo da hierarquia UVM (uvm_test_top). Ele cria o env e decide
//   QUAIS sequences rodar. Testes diferentes = mesmas pecas, cenarios diferentes.
//   O teste e escolhido na linha de comando: +UVM_TESTNAME=<classe>.
//
// CONCEITO UVM: objections
//   A run_phase acaba quando ninguem mais tem objection levantada.
//   raise_objection no inicio, drop_objection no fim. Sem raise, a simulacao
//   termina no tempo 0 sem fazer nada (erro classico de iniciante!).
//
// CONCEITO UVM: fases
//   build -> connect -> end_of_elaboration -> run (consome tempo) -> extract
//   -> check -> report -> final. Aqui usamos report_phase para o veredito.
// =============================================================================
class rv_base_test extends uvm_test;
    `uvm_component_utils(rv_base_test)

    rv_env env;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = rv_env::type_id::create("env", this);
    endfunction

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();   // mostra a arvore de componentes no log
    endfunction

    // Cada teste filho sobrescreve run_scenario(); objection fica centralizada.
    virtual task run_scenario();
    endtask

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        run_scenario();
        phase.drop_objection(this);
    endtask

    function void report_phase(uvm_phase phase);
        uvm_report_server rs;
        rs = uvm_report_server::get_server();
        // scb.n_errors conta inclusive as divergencias que nao foram impressas
        if (rs.get_severity_count(UVM_ERROR) + rs.get_severity_count(UVM_FATAL) == 0
            && env.scb.n_errors == 0)
            `uvm_info("RESULT", $sformatf("*** TESTE %s PASSOU ***", get_type_name()), UVM_NONE)
        else
            `uvm_info("RESULT", $sformatf("*** TESTE %s FALHOU *** (%0d erros reportados, %0d divergencias ISA)",
                                          get_type_name(), rs.get_severity_count(UVM_ERROR),
                                          env.scb.n_errors), UVM_NONE)
    endfunction
endclass
