// =============================================================================
// rv_commit_agent.sv  -  AGENTE PASSIVO (so monitor)
// -----------------------------------------------------------------------------
// Ninguem "dirige" o commit: e o proprio processador que o produz. Por isso
// este agente nao tem sequencer nem driver.
// =============================================================================
class rv_commit_agent extends uvm_agent;
    `uvm_component_utils(rv_commit_agent)

    rv_commit_monitor mon;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        mon = rv_commit_monitor::type_id::create("mon", this);
    endfunction
endclass
