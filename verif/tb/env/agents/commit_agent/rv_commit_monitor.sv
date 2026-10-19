// =============================================================================
// rv_commit_monitor.sv  -  MONITOR: pinos -> transacoes
// -----------------------------------------------------------------------------
// CONCEITO UVM: monitor + analysis port
//   O monitor e o inverso do driver: le sinais e cria transacoes. Ele NUNCA
//   decide se algo esta certo (isso e papel do scoreboard); so relata.
//
//   ap.write(t) faz broadcast: qualquer numero de componentes pode se ligar a
//   esta porta (scoreboard, cobertura, ...). O monitor nao sabe quem escuta.
// =============================================================================
class rv_commit_monitor extends uvm_monitor;
    `uvm_component_utils(rv_commit_monitor)

    virtual rv_commit_if vif;
    uvm_analysis_port #(rv_commit_item) ap;
    longint cycle;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap = new("ap", this);
        if (!uvm_config_db#(virtual rv_commit_if)::get(this, "", "commit_vif", vif))
            `uvm_fatal("NOVIF", "rv_commit_if nao encontrada no config_db")
    endfunction

    task run_phase(uvm_phase phase);
        rv_commit_item t;
        forever begin
            @(vif.mon_cb);
            cycle++;
            if (vif.mon_cb.rst !== 1'b0) continue;   // em reset (ou X): nada terminou
            t = rv_commit_item::type_id::create("t");
            t.pc        = vif.mon_cb.pc;
            t.instr     = vif.mon_cb.instr;
            t.reg_we    = vif.mon_cb.reg_we;
            t.rd_wdata  = vif.mon_cb.rd_wdata;
            t.rs1_val   = vif.mon_cb.rs1_val;
            t.rs2_val   = vif.mon_cb.rs2_val;
            t.mem_we    = vif.mon_cb.mem_we;
            t.mem_addr  = vif.mon_cb.mem_addr;
            t.mem_wdata = vif.mon_cb.mem_wdata;
            t.mem_rdata = vif.mon_cb.mem_rdata;
            t.pc_next   = vif.mon_cb.pc_next;
            t.cycle     = cycle;
            `uvm_info("COMMIT", t.convert2string(), UVM_HIGH)
            ap.write(t);
        end
    endtask
endclass
