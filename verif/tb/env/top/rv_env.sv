// =============================================================================
// rv_env.sv  -  AMBIENTE: instancia e conecta tudo que e reutilizavel
// -----------------------------------------------------------------------------
// CONCEITO UVM: env
//   O env nao sabe QUAL teste esta rodando. Ele so monta a "bancada":
//
//      prog_agt.drv --(programa carregado)--> scb.prog_imp
//      commit_agt.mon --(cada instrucao)--+--> scb.commit_imp
//                                         +--> cov
//      io_agt.mon --(cada pulso de LED)----> led_fifo  (lido pela sequence do jogo)
//
// CONCEITO UVM: uvm_tlm_analysis_fifo
//   Guarda as transacoes publicadas ate alguem fazer get(). Permite que uma
//   SEQUENCE reaja ao que o DUT faz (o "jogador" espera o LED apagar para
//   responder). Isso e uma sequence REATIVA.
// =============================================================================
class rv_env extends uvm_env;
    `uvm_component_utils(rv_env)

    rv_prog_agent   prog_agt;
    rv_commit_agent commit_agt;
    rv_io_agent     io_agt;
    rv_scoreboard   scb;
    rv_coverage     cov;
    uvm_tlm_analysis_fifo #(rv_led_item) led_fifo;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        prog_agt   = rv_prog_agent::type_id::create("prog_agt", this);
        commit_agt = rv_commit_agent::type_id::create("commit_agt", this);
        io_agt     = rv_io_agent::type_id::create("io_agt", this);
        scb        = rv_scoreboard::type_id::create("scb", this);
        cov        = rv_coverage::type_id::create("cov", this);
        led_fifo   = new("led_fifo", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        prog_agt.drv.ap.connect(scb.prog_imp);
        commit_agt.mon.ap.connect(scb.commit_imp);
        commit_agt.mon.ap.connect(cov.analysis_export);
        io_agt.mon.ap.connect(led_fifo.analysis_export);
    endfunction
endclass
