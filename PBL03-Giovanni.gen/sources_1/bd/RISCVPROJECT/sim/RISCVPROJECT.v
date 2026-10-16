//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
//Date        : Fri Oct 16 10:44:00 2026
//Host        : Breniak-Work running 64-bit Ubuntu 26.04.1 LTS
//Command     : generate_target RISCVPROJECT.bd
//Design      : RISCVPROJECT
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCVPROJECT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCVPROJECT,x_ipVersion=1.00.a,x_ipLanguage=VERILOG}" *) (* HW_HANDOFF = "RISCVPROJECT.hwdef" *) 
module RISCVPROJECT
   (clk_0,
    dpad_in_0,
    led0_out_0,
    led1_out_0,
    led2_out_0,
    led3_out_0,
    reset_0,
    switches_in_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN RISCVPROJECT_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  input [3:0]dpad_in_0;
  output [31:0]led0_out_0;
  output [31:0]led1_out_0;
  output [31:0]led2_out_0;
  output [31:0]led3_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;
  input [31:0]switches_in_0;

  wire alu_0_LessSigned;
  wire alu_0_LessUnsigned;
  wire [31:0]alu_0_Result;
  wire alu_0_Zero;
  wire clk_0;
  wire [31:0]data_memory_0_RD;
  wire [1:0]decoder_control_0_ALUASrc;
  wire [2:0]decoder_control_0_ALUControl;
  wire decoder_control_0_ALUSrc;
  wire [2:0]decoder_control_0_ImmSrc;
  wire decoder_control_0_IsJalr;
  wire decoder_control_0_MemWrite;
  wire decoder_control_0_PCSrc;
  wire decoder_control_0_RegWrite;
  wire [1:0]decoder_control_0_ResultSrc;
  wire [3:0]dpad_in_0;
  wire [2:0]funct3_Dout;
  wire [0:0]funct7b5_Dout;
  wire [31:0]immediate_extended_0_ImmExt;
  wire [31:0]instr_mem_0_RD;
  wire [31:0]led0_out_0;
  wire [31:0]led1_out_0;
  wire [31:0]led2_out_0;
  wire [31:0]led3_out_0;
  wire [31:0]mux_alu_a_0_SrcA;
  wire [31:0]mux_alu_src_0_SrcB;
  wire [31:0]mux_pc_0_PCNext;
  wire [31:0]pc_0_PC;
  wire [31:0]pc_plus4_0_PCPlus4;
  wire [31:0]pc_target_0_PCTarget;
  wire [31:0]regfile_0_RD1;
  wire [31:0]regfile_0_RD2;
  wire reset_0;
  wire [6:0]sliceopcode_Dout;
  wire [31:0]switches_in_0;
  wire [31:0]write2_0_Result;
  wire [4:0]xlslice_0_Dout;
  wire [24:0]xlslice_1_Dout;
  wire [4:0]xlslice_2_Dout;
  wire [4:0]xlslice_3_Dout;

  RISCVPROJECT_alu_0_0 alu_0
       (.A(mux_alu_a_0_SrcA),
        .ALUControl(decoder_control_0_ALUControl),
        .B(mux_alu_src_0_SrcB),
        .LessSigned(alu_0_LessSigned),
        .LessUnsigned(alu_0_LessUnsigned),
        .Result(alu_0_Result),
        .Zero(alu_0_Zero));
  RISCVPROJECT_data_memory_0_0 data_memory_0
       (.A(alu_0_Result),
        .RD(data_memory_0_RD),
        .WD(regfile_0_RD2),
        .WE(decoder_control_0_MemWrite),
        .clk(clk_0),
        .dpad_in(dpad_in_0),
        .funct3(funct3_Dout),
        .led0_out(led0_out_0),
        .led1_out(led1_out_0),
        .led2_out(led2_out_0),
        .led3_out(led3_out_0),
        .switches_in(switches_in_0));
  RISCVPROJECT_decoder_control_0_0 decoder_control_0
       (.ALUASrc(decoder_control_0_ALUASrc),
        .ALUControl(decoder_control_0_ALUControl),
        .ALUSrc(decoder_control_0_ALUSrc),
        .ImmSrc(decoder_control_0_ImmSrc),
        .IsJalr(decoder_control_0_IsJalr),
        .LessSigned(alu_0_LessSigned),
        .LessUnsigned(alu_0_LessUnsigned),
        .MemWrite(decoder_control_0_MemWrite),
        .PCSrc(decoder_control_0_PCSrc),
        .RegWrite(decoder_control_0_RegWrite),
        .ResultSrc(decoder_control_0_ResultSrc),
        .Zero(alu_0_Zero),
        .funct3(funct3_Dout),
        .funct7b5(funct7b5_Dout),
        .opcode(sliceopcode_Dout));
  RISCVPROJECT_xlslice_4_1 funct3
       (.Din(instr_mem_0_RD),
        .Dout(funct3_Dout));
  RISCVPROJECT_xlslice_4_2 funct7b5
       (.Din(instr_mem_0_RD),
        .Dout(funct7b5_Dout));
  RISCVPROJECT_immediate_extended_0_0 immediate_extended_0
       (.ImmExt(immediate_extended_0_ImmExt),
        .ImmSrc(decoder_control_0_ImmSrc),
        .Instr(xlslice_1_Dout));
  RISCVPROJECT_instr_mem_0_0 instr_mem_0
       (.A(pc_0_PC),
        .RD(instr_mem_0_RD));
  RISCVPROJECT_mux_alu_a_0_0 mux_alu_a_0
       (.ALUASrc(decoder_control_0_ALUASrc),
        .PC(pc_0_PC),
        .RD1(regfile_0_RD1),
        .SrcA(mux_alu_a_0_SrcA));
  RISCVPROJECT_mux_alu_src_0_0 mux_alu_src_0
       (.ALUSrc(decoder_control_0_ALUSrc),
        .ImmExt(immediate_extended_0_ImmExt),
        .RD2(regfile_0_RD2),
        .SrcB(mux_alu_src_0_SrcB));
  RISCVPROJECT_mux_pc_0_0 mux_pc_0
       (.PCNext(mux_pc_0_PCNext),
        .PCPlus4(pc_plus4_0_PCPlus4),
        .PCSrc(decoder_control_0_PCSrc),
        .PCTarget(pc_target_0_PCTarget));
  RISCVPROJECT_pc_0_0 pc_0
       (.PC(pc_0_PC),
        .PCNext(mux_pc_0_PCNext),
        .clk(clk_0),
        .reset(reset_0));
  RISCVPROJECT_pc_plus4_0_0 pc_plus4_0
       (.PC(pc_0_PC),
        .PCPlus4(pc_plus4_0_PCPlus4));
  RISCVPROJECT_pc_target_0_0 pc_target_0
       (.ImmExt(immediate_extended_0_ImmExt),
        .IsJalr(decoder_control_0_IsJalr),
        .PC(pc_0_PC),
        .PCTarget(pc_target_0_PCTarget),
        .RD1(regfile_0_RD1));
  RISCVPROJECT_regfile_0_0 regfile_0
       (.A1(xlslice_0_Dout),
        .A2(xlslice_2_Dout),
        .A3(xlslice_3_Dout),
        .RD1(regfile_0_RD1),
        .RD2(regfile_0_RD2),
        .WD3(write2_0_Result),
        .WE3(decoder_control_0_RegWrite),
        .clk(clk_0));
  RISCVPROJECT_xlslice_4_0 sliceopcode
       (.Din(instr_mem_0_RD),
        .Dout(sliceopcode_Dout));
  RISCVPROJECT_write2_0_0 write2_0
       (.ALUResult(alu_0_Result),
        .PCPlus4(pc_plus4_0_PCPlus4),
        .ReadData(data_memory_0_RD),
        .Result(write2_0_Result),
        .ResultSrc(decoder_control_0_ResultSrc));
  RISCVPROJECT_xlslice_0_0 xlslice_0
       (.Din(instr_mem_0_RD),
        .Dout(xlslice_0_Dout));
  RISCVPROJECT_xlslice_0_1 xlslice_1
       (.Din(instr_mem_0_RD),
        .Dout(xlslice_1_Dout));
  RISCVPROJECT_xlslice_0_2 xlslice_2
       (.Din(instr_mem_0_RD),
        .Dout(xlslice_2_Dout));
  RISCVPROJECT_xlslice_3_0 xlslice_3
       (.Din(instr_mem_0_RD),
        .Dout(xlslice_3_Dout));
endmodule
