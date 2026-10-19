// =============================================================================
// rv_io_monitor.sv  -  transforma os LEDs em eventos "LEDn piscou por X ciclos"
// -----------------------------------------------------------------------------
// Alem de publicar eventos, o monitor faz uma checagem de PROTOCOLO que vale
// sempre, independente do teste: nunca pode haver dois LEDs acesos ao mesmo
// tempo. Checagens "sempre verdadeiras" assim costumam morar no monitor (ou em
// assertions SVA na interface).
// =============================================================================
class rv_io_monitor extends uvm_monitor;
    `uvm_component_utils(rv_io_monitor)

    virtual rv_io_if vif;
    uvm_analysis_port #(rv_led_item) ap;
    int unsigned n_events;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap = new("ap", this);
        if (!uvm_config_db#(virtual rv_io_if)::get(this, "", "io_vif", vif))
            `uvm_fatal("NOVIF", "rv_io_if nao encontrada no config_db")
    endfunction

    task run_phase(uvm_phase phase);
        rv_led_item ev;
        int lit_color = -1;   // -1 = nenhum aceso
        int n_lit;
        forever begin
            @(negedge vif.clk);
            n_lit = 0;
            foreach (vif.led[i]) if (vif.led[i] !== 32'd0) n_lit++;
            if (n_lit > 1)
                `uvm_error("LED_ONEHOT", $sformatf("%0d LEDs acesos ao mesmo tempo", n_lit))

            if (lit_color < 0 && n_lit == 1) begin            // acendeu
                ev = rv_led_item::type_id::create("ev");
                foreach (vif.led[i]) if (vif.led[i] !== 32'd0) lit_color = i;
                ev.color = lit_color;
                ev.rgb   = vif.led[lit_color];
                ev.t_on  = $time;
                ev.on_cycles = 0;
            end else if (lit_color >= 0) begin
                if (vif.led[lit_color] === 32'd0) begin        // apagou
                    n_events++;
                    `uvm_info("LED", ev.convert2string(), UVM_MEDIUM)
                    ap.write(ev);
                    lit_color = -1;
                end else
                    ev.on_cycles++;
            end
        end
    endtask
endclass
