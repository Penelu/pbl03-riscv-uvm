// =============================================================================
// rv_tb_top.sv  -  MODULO TOPO da simulacao
// -----------------------------------------------------------------------------
// Este e o unico lugar "estatico" (module) do testbench. Ele faz quatro coisas:
//   1) gera o clock;
//   2) instancia o DUT e as interfaces;
//   3) liga as interfaces ao DUT (pinos + sinais internos para o commit);
//   4) entrega as interfaces ao mundo UVM via uvm_config_db e chama run_test().
//
// CONCEITO UVM: uvm_config_db
//   E um "quadro de avisos" global. O topo publica (set) a virtual interface
//   com um nome; drivers/monitores pegam (get) pelo mesmo nome. Assim as
//   classes nao dependem de caminhos hierarquicos.
// =============================================================================
`timescale 1ns / 1ps

module rv_tb_top;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    import rv_test_pkg::*;

    // 100 MHz (FREQ_HZ do block design do colega)
    logic clk = 1'b0;
    always #5 clk = ~clk;

    rv_ctrl_if   ctrl_if  (clk);
    rv_commit_if commit_if(clk);
    rv_io_if     io_if    (clk);

    initial ctrl_if.rst = 1'b1;

    // ---------------------------------------------------------------- DUT
    RISCVPROJECT_wrapper dut (
        .clk_0        (clk),
        .reset_0      (ctrl_if.rst),
        .switches_in_0(io_if.switches),
        .dpad_in_0    (io_if.dpad),
        .led0_out_0   (io_if.led[0]),
        .led1_out_0   (io_if.led[1]),
        .led2_out_0   (io_if.led[2]),
        .led3_out_0   (io_if.led[3])
    );

    // ------------------------------------------- sinais internos (white-box)
    // Nomes dos fios do block design: PBL03-Giovanni.gen/.../sim/RISCVPROJECT.v
    assign ctrl_if.pc          = dut.RISCVPROJECT_i.pc_0_PC;
    assign commit_if.rst       = ctrl_if.rst;
    assign commit_if.pc        = dut.RISCVPROJECT_i.pc_0_PC;
    assign commit_if.instr     = dut.RISCVPROJECT_i.instr_mem_0_RD;
    assign commit_if.reg_we    = dut.RISCVPROJECT_i.decoder_control_0_RegWrite;
    assign commit_if.rd_wdata  = dut.RISCVPROJECT_i.write2_0_Result;
    assign commit_if.rs1_val   = dut.RISCVPROJECT_i.regfile_0_RD1;
    assign commit_if.rs2_val   = dut.RISCVPROJECT_i.regfile_0_RD2;
    assign commit_if.mem_we    = dut.RISCVPROJECT_i.decoder_control_0_MemWrite;
    assign commit_if.mem_addr  = dut.RISCVPROJECT_i.alu_0_Result;
    assign commit_if.mem_wdata = dut.RISCVPROJECT_i.regfile_0_RD2;
    assign commit_if.mem_rdata = dut.RISCVPROJECT_i.data_memory_0_RD;
    assign commit_if.pc_next   = dut.RISCVPROJECT_i.mux_pc_0_PCNext;

    // ------------------------------------------------------------ UVM
    initial begin
        uvm_config_db#(virtual rv_ctrl_if)  ::set(null, "*", "ctrl_vif",   ctrl_if);
        uvm_config_db#(virtual rv_commit_if)::set(null, "*", "commit_vif", commit_if);
        uvm_config_db#(virtual rv_io_if)    ::set(null, "*", "io_vif",     io_if);
        run_test();   // nome do teste vem de +UVM_TESTNAME
    end

    // Rede de seguranca: se algo travar, nao simula para sempre.
    initial begin
        #50ms;
        `uvm_fatal("WATCHDOG", "simulacao passou de 50 ms: algo travou")
    end
endmodule
