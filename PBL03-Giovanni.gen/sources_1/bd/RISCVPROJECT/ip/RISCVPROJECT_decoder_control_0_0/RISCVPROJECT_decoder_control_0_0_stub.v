// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_decoder_control_0_0/RISCVPROJECT_decoder_control_0_0_stub.v
// Design      : RISCVPROJECT_decoder_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "RISCVPROJECT_decoder_control_0_0,decoder_control,{}" *) (* CORE_GENERATION_INFO = "RISCVPROJECT_decoder_control_0_0,decoder_control,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=decoder_control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "decoder_control,Vivado 2026.1" *) 
module RISCVPROJECT_decoder_control_0_0(opcode, funct3, funct7b5, Zero, LessSigned, 
  LessUnsigned, RegWrite, ImmSrc, ALUSrc, ALUASrc, MemWrite, ResultSrc, PCSrc, IsJalr, ALUControl)
/* synthesis syn_black_box black_box_pad_pin="opcode[6:0],funct3[2:0],funct7b5,Zero,LessSigned,LessUnsigned,RegWrite,ImmSrc[2:0],ALUSrc,ALUASrc[1:0],MemWrite,ResultSrc[1:0],PCSrc,IsJalr,ALUControl[2:0]" */;
  input [6:0]opcode;
  input [2:0]funct3;
  input funct7b5;
  input Zero;
  input LessSigned;
  input LessUnsigned;
  output RegWrite;
  output [2:0]ImmSrc;
  output ALUSrc;
  output [1:0]ALUASrc;
  output MemWrite;
  output [1:0]ResultSrc;
  output PCSrc;
  output IsJalr;
  output [2:0]ALUControl;
endmodule
