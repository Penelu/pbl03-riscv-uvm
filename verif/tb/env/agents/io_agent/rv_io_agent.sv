// =============================================================================
// rv_io_agent.sv  -  agente ativo completo: sequencer + driver + monitor
// =============================================================================
typedef uvm_sequencer #(rv_io_item) rv_io_sequencer;

class rv_io_agent extends uvm_agent;
    `uvm_component_utils(rv_io_agent)

    rv_io_sequencer sqr;
    rv_io_driver    drv;
    rv_io_monitor   mon;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        mon = rv_io_monitor::type_id::create("mon", this);
        // get_is_active() vem do config_db ("is_active"); o padrao e UVM_ACTIVE.
        if (get_is_active() == UVM_ACTIVE) begin
            sqr = rv_io_sequencer::type_id::create("sqr", this);
            drv = rv_io_driver::type_id::create("drv", this);
        end
    endfunction

    function void connect_phase(uvm_phase phase);
        if (get_is_active() == UVM_ACTIVE)
            drv.seq_item_port.connect(sqr.seq_item_export);
    endfunction
endclass
