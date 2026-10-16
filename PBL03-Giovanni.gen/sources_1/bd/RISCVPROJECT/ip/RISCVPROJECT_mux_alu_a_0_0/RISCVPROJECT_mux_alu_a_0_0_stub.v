// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/RISCVPROJECT_mux_alu_a_0_0_stub.v
// Design      : RISCVPROJECT_mux_alu_a_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{}" *) (* CORE_GENERATION_INFO = "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux_alu_a,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mux_alu_a,Vivado 2026.1" *) 
module RISCVPROJECT_mux_alu_a_0_0(RD1, PC, ALUASrc, SrcA)
/* synthesis syn_black_box black_box_pad_pin="RD1[31:0],PC[31:0],ALUASrc[1:0],SrcA[31:0]" */;
  input [31:0]RD1;
  input [31:0]PC;
  input [1:0]ALUASrc;
  output [31:0]SrcA;
endmodule
