// =============================================================================
// rv_io_driver.sv  -  aperta chaves e botoes
// -----------------------------------------------------------------------------
// Sinais mudam na borda de DESCIDA, assim o DUT (que amostra na subida) sempre
// ve valores estaveis.
// =============================================================================
class rv_io_driver extends uvm_driver #(rv_io_item);
    `uvm_component_utils(rv_io_driver)

    virtual rv_io_if vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(virtual rv_io_if)::get(this, "", "io_vif", vif))
            `uvm_fatal("NOVIF", "rv_io_if nao encontrada no config_db")
    endfunction

    task run_phase(uvm_phase phase);
        vif.switches = '0;
        vif.dpad     = '0;
        forever begin
            seq_item_port.get_next_item(req);
            `uvm_info("IO_DRV", req.convert2string(), UVM_HIGH)
            @(negedge vif.clk);
            case (req.cmd)
                IO_PULSE_SWITCHES: begin
                    vif.switches = req.switches;
                    repeat (req.hold_cycles) @(negedge vif.clk);
                    vif.switches = '0;
                end
                IO_PRESS: begin
                    vif.dpad = 4'b0001 << req.color;
                    repeat (req.hold_cycles) @(negedge vif.clk);
                    vif.dpad = '0;
                end
                IO_IDLE: repeat (req.hold_cycles) @(negedge vif.clk);
            endcase
            seq_item_port.item_done();
        end
    endtask
endclass
