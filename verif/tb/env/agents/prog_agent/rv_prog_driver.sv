// =============================================================================
// rv_prog_driver.sv  -  DRIVER: transforma a transacao em acao sobre o DUT
// -----------------------------------------------------------------------------
// CONCEITO UVM: driver
//   Laco infinito:  get_next_item(req) -> faz o trabalho -> item_done()
//   O driver e o unico componente que "toca" nos sinais de entrada do DUT.
//   Ele recebe a virtual interface pelo uvm_config_db (ver rv_tb_top).
//
// Este driver nao gera formas de onda de barramento (o DUT nao tem barramento
// de carga). O "protocolo" dele e:
//   1) segura o reset;  2) grava as memorias por backdoor;
//   3) tira o snapshot e publica (analysis port) para o scoreboard;
//   4) solta o reset;   5) espera o PC chegar no laco final (ou timeout).
// =============================================================================
class rv_prog_driver extends uvm_driver #(rv_prog_item);
    `uvm_component_utils(rv_prog_driver)

    virtual rv_ctrl_if vif;
    uvm_analysis_port #(rv_prog_item) ap;   // "programa carregado" -> scoreboard

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap = new("ap", this);
        if (!uvm_config_db#(virtual rv_ctrl_if)::get(this, "", "ctrl_vif", vif))
            `uvm_fatal("NOVIF", "rv_ctrl_if nao encontrada no config_db")
    endfunction

    task run_phase(uvm_phase phase);
        vif.rst <= 1'b1;
        forever begin
            seq_item_port.get_next_item(req);
            `uvm_info("PROG", {"Carregando ", req.convert2string()}, UVM_LOW)
            load_and_run(req);
            seq_item_port.item_done();
        end
    endtask

    task load_and_run(rv_prog_item p);
        // 1) reset (sincrono no PC do colega: precisa de bordas de clock)
        @(negedge vif.clk);
        vif.rst = 1'b1;
        repeat (3) @(negedge vif.clk);

        // 2) carga por backdoor
        if (!p.use_dut_image) begin
            for (int i = 0; i < 256; i++)
                vif.imem_write(i, (i < p.imem.size()) ? p.imem[i] : rv_isa_pkg::SELF_LOOP);
            foreach (p.dmem_init[a]) vif.dmem_write(a, p.dmem_init[a]);
        end

        // 3) snapshot -> modelo de referencia
        for (int i = 0; i < 256; i++)   p.img_imem[i] = vif.imem_read(i);
        for (int a = 0; a < 16384; a++) p.img_dmem[a] = vif.dmem_read(a);
        ap.write(p);

        // 4) solta o reset numa borda de descida (longe da borda ativa)
        vif.rst = 1'b0;
        if (!p.wait_for_end) return;

        // 5) espera o laco final
        for (int c = 0; c < p.timeout_cycles; c++) begin
            @(posedge vif.clk);
            if (vif.pc === p.end_pc) begin
                repeat (3) @(posedge vif.clk);   // deixa o scoreboard ver o laco
                `uvm_info("PROG", $sformatf("%s terminou apos ~%0d ciclos", p.prog_name, c), UVM_LOW)
                return;
            end
        end
        `uvm_error("PROG_TIMEOUT", $sformatf("%s nao chegou em PC=0x%0h em %0d ciclos (PC atual=0x%0h)",
                                             p.prog_name, p.end_pc, p.timeout_cycles, vif.pc))
    endtask
endclass
