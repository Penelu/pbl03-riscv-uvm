// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_decoder_control_0_0/RISCVPROJECT_decoder_control_0_0_sim_netlist.v
// Design      : RISCVPROJECT_decoder_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_decoder_control_0_0,decoder_control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "decoder_control,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_decoder_control_0_0
   (opcode,
    funct3,
    funct7b5,
    Zero,
    LessSigned,
    LessUnsigned,
    RegWrite,
    ImmSrc,
    ALUSrc,
    ALUASrc,
    MemWrite,
    ResultSrc,
    PCSrc,
    IsJalr,
    ALUControl);
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

  wire [1:0]ALUASrc;
  wire \ALUASrc[1]_INST_0_i_1_n_0 ;
  wire [2:0]ALUControl;
  wire \ALUControl[0]_INST_0_i_1_n_0 ;
  wire \ALUControl[0]_INST_0_i_2_n_0 ;
  wire \ALUControl[0]_INST_0_i_3_n_0 ;
  wire ALUSrc;
  wire [2:0]ImmSrc;
  wire \ImmSrc[1]_INST_0_i_1_n_0 ;
  wire IsJalr;
  wire LessSigned;
  wire LessUnsigned;
  wire MemWrite;
  wire PCSrc;
  wire PCSrc_INST_0_i_1_n_0;
  wire PCSrc_INST_0_i_2_n_0;
  wire PCSrc_INST_0_i_3_n_0;
  wire RegWrite;
  wire RegWrite_INST_0_i_1_n_0;
  wire RegWrite_INST_0_i_2_n_0;
  wire RegWrite_INST_0_i_3_n_0;
  wire RegWrite_INST_0_i_4_n_0;
  wire [1:0]ResultSrc;
  wire Zero;
  wire [2:0]funct3;
  wire funct7b5;
  wire [6:0]opcode;

  LUT3 #(
    .INIT(8'h08)) 
    \ALUASrc[0]_INST_0 
       (.I0(opcode[2]),
        .I1(\ALUASrc[1]_INST_0_i_1_n_0 ),
        .I2(opcode[5]),
        .O(ALUASrc[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \ALUASrc[1]_INST_0 
       (.I0(opcode[2]),
        .I1(\ALUASrc[1]_INST_0_i_1_n_0 ),
        .I2(opcode[5]),
        .O(ALUASrc[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \ALUASrc[1]_INST_0_i_1 
       (.I0(opcode[6]),
        .I1(opcode[1]),
        .I2(opcode[0]),
        .I3(opcode[3]),
        .I4(opcode[4]),
        .O(\ALUASrc[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0C0CFFAE0C0C)) 
    \ALUControl[0]_INST_0 
       (.I0(\ALUControl[0]_INST_0_i_1_n_0 ),
        .I1(PCSrc_INST_0_i_2_n_0),
        .I2(opcode[2]),
        .I3(\ALUControl[0]_INST_0_i_2_n_0 ),
        .I4(\ALUASrc[1]_INST_0_i_1_n_0 ),
        .I5(\ALUControl[0]_INST_0_i_3_n_0 ),
        .O(ALUControl[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ALUControl[0]_INST_0_i_1 
       (.I0(funct3[2]),
        .I1(funct3[0]),
        .I2(funct3[1]),
        .I3(opcode[2]),
        .O(\ALUControl[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \ALUControl[0]_INST_0_i_2 
       (.I0(opcode[5]),
        .I1(funct7b5),
        .I2(funct3[2]),
        .I3(opcode[2]),
        .I4(funct3[0]),
        .O(\ALUControl[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \ALUControl[0]_INST_0_i_3 
       (.I0(funct3[0]),
        .I1(opcode[2]),
        .I2(funct3[1]),
        .O(\ALUControl[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \ALUControl[1]_INST_0 
       (.I0(funct3[0]),
        .I1(\ALUASrc[1]_INST_0_i_1_n_0 ),
        .I2(funct3[2]),
        .I3(funct3[1]),
        .I4(opcode[2]),
        .O(ALUControl[1]));
  LUT5 #(
    .INIT(32'h000C0048)) 
    \ALUControl[2]_INST_0 
       (.I0(funct3[2]),
        .I1(\ALUASrc[1]_INST_0_i_1_n_0 ),
        .I2(funct3[1]),
        .I3(opcode[2]),
        .I4(funct3[0]),
        .O(ALUControl[2]));
  LUT6 #(
    .INIT(64'hAAFF000001010000)) 
    ALUSrc_INST_0
       (.I0(opcode[2]),
        .I1(funct3[0]),
        .I2(funct3[2]),
        .I3(opcode[5]),
        .I4(RegWrite_INST_0_i_1_n_0),
        .I5(opcode[4]),
        .O(ALUSrc));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \ImmSrc[0]_INST_0 
       (.I0(opcode[3]),
        .I1(RegWrite_INST_0_i_4_n_0),
        .I2(opcode[5]),
        .I3(opcode[4]),
        .I4(RegWrite_INST_0_i_2_n_0),
        .I5(RegWrite_INST_0_i_1_n_0),
        .O(ImmSrc[0]));
  LUT3 #(
    .INIT(8'h82)) 
    \ImmSrc[1]_INST_0 
       (.I0(\ImmSrc[1]_INST_0_i_1_n_0 ),
        .I1(opcode[3]),
        .I2(opcode[2]),
        .O(ImmSrc[1]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \ImmSrc[1]_INST_0_i_1 
       (.I0(opcode[6]),
        .I1(opcode[5]),
        .I2(opcode[4]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .O(\ImmSrc[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \ImmSrc[2]_INST_0 
       (.I0(opcode[4]),
        .I1(opcode[3]),
        .I2(opcode[0]),
        .I3(opcode[1]),
        .I4(opcode[6]),
        .I5(opcode[2]),
        .O(ImmSrc[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    IsJalr_INST_0
       (.I0(funct3[1]),
        .I1(funct3[2]),
        .I2(opcode[2]),
        .I3(funct3[0]),
        .I4(PCSrc_INST_0_i_2_n_0),
        .O(IsJalr));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    MemWrite_INST_0
       (.I0(RegWrite_INST_0_i_1_n_0),
        .I1(funct3[0]),
        .I2(opcode[2]),
        .I3(funct3[2]),
        .I4(opcode[4]),
        .I5(opcode[5]),
        .O(MemWrite));
  LUT5 #(
    .INIT(32'hFFC8C8C8)) 
    PCSrc_INST_0
       (.I0(PCSrc_INST_0_i_1_n_0),
        .I1(PCSrc_INST_0_i_2_n_0),
        .I2(PCSrc_INST_0_i_3_n_0),
        .I3(RegWrite_INST_0_i_3_n_0),
        .I4(RegWrite_INST_0_i_4_n_0),
        .O(PCSrc));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    PCSrc_INST_0_i_1
       (.I0(LessUnsigned),
        .I1(funct3[1]),
        .I2(funct3[2]),
        .I3(funct3[0]),
        .I4(opcode[2]),
        .O(PCSrc_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    PCSrc_INST_0_i_2
       (.I0(opcode[6]),
        .I1(opcode[5]),
        .I2(opcode[4]),
        .I3(opcode[3]),
        .I4(opcode[0]),
        .I5(opcode[1]),
        .O(PCSrc_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000000006C6)) 
    PCSrc_INST_0_i_3
       (.I0(Zero),
        .I1(funct3[0]),
        .I2(funct3[2]),
        .I3(LessSigned),
        .I4(funct3[1]),
        .I5(opcode[2]),
        .O(PCSrc_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF88A888A888A8)) 
    RegWrite_INST_0
       (.I0(RegWrite_INST_0_i_1_n_0),
        .I1(opcode[4]),
        .I2(RegWrite_INST_0_i_2_n_0),
        .I3(opcode[5]),
        .I4(RegWrite_INST_0_i_3_n_0),
        .I5(RegWrite_INST_0_i_4_n_0),
        .O(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    RegWrite_INST_0_i_1
       (.I0(opcode[3]),
        .I1(opcode[0]),
        .I2(opcode[1]),
        .I3(opcode[6]),
        .O(RegWrite_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    RegWrite_INST_0_i_2
       (.I0(funct3[0]),
        .I1(opcode[2]),
        .I2(funct3[2]),
        .O(RegWrite_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    RegWrite_INST_0_i_3
       (.I0(funct3[0]),
        .I1(funct3[1]),
        .I2(funct3[2]),
        .I3(opcode[3]),
        .O(RegWrite_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    RegWrite_INST_0_i_4
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(opcode[4]),
        .I3(opcode[5]),
        .I4(opcode[6]),
        .I5(opcode[2]),
        .O(RegWrite_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ResultSrc[0]_INST_0 
       (.I0(opcode[5]),
        .I1(opcode[4]),
        .I2(RegWrite_INST_0_i_1_n_0),
        .I3(funct3[0]),
        .I4(opcode[2]),
        .I5(funct3[2]),
        .O(ResultSrc[0]));
  LUT5 #(
    .INIT(32'h8888888A)) 
    \ResultSrc[1]_INST_0 
       (.I0(RegWrite_INST_0_i_4_n_0),
        .I1(opcode[3]),
        .I2(funct3[2]),
        .I3(funct3[1]),
        .I4(funct3[0]),
        .O(ResultSrc[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
