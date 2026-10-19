// =============================================================================
// rv_prog_agent.sv  -  AGENTE ATIVO: sequencer + driver
// -----------------------------------------------------------------------------
// CONCEITO UVM: agent
//   Um agente agrupa tudo que lida com UMA interface do DUT:
//     sequencer (fila de transacoes) -> driver (pinos) [+ monitor (observa)].
//   Agente ATIVO tem driver; PASSIVO so tem monitor.
//
// CONCEITO UVM: sequencer
//   Arbitra quais sequences mandam itens para o driver. Quase sempre nao
//   precisa de codigo proprio: um typedef de uvm_sequencer #(item) basta.
// =============================================================================
typedef uvm_sequencer #(rv_prog_item) rv_prog_sequencer;

class rv_prog_agent extends uvm_agent;
    `uvm_component_utils(rv_prog_agent)

    rv_prog_sequencer sqr;
    rv_prog_driver    drv;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    // build_phase: cria os filhos (sempre via type_id::create, para permitir
    // que um teste troque a classe pela factory sem editar este arquivo).
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        sqr = rv_prog_sequencer::type_id::create("sqr", this);
        drv = rv_prog_driver::type_id::create("drv", this);
    endfunction

    // connect_phase: liga as portas TLM depois que todos existem.
    function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(sqr.seq_item_export);
    endfunction
endclass
