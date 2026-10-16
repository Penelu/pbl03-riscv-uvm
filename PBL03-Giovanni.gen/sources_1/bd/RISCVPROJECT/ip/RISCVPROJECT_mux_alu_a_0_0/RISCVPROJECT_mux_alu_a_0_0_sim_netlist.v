// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/RISCVPROJECT_mux_alu_a_0_0_sim_netlist.v
// Design      : RISCVPROJECT_mux_alu_a_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux_alu_a,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_mux_alu_a_0_0
   (RD1,
    PC,
    ALUASrc,
    SrcA);
  input [31:0]RD1;
  input [31:0]PC;
  input [1:0]ALUASrc;
  output [31:0]SrcA;

  wire [1:0]ALUASrc;
  wire [31:0]PC;
  wire [31:0]RD1;
  wire [31:0]SrcA;

  RISCVPROJECT_mux_alu_a_0_0_mux_alu_a inst
       (.ALUASrc(ALUASrc),
        .PC(PC),
        .RD1(RD1),
        .SrcA(SrcA));
endmodule

(* ORIG_REF_NAME = "mux_alu_a" *) 
module RISCVPROJECT_mux_alu_a_0_0_mux_alu_a
   (SrcA,
    ALUASrc,
    RD1,
    PC);
  output [31:0]SrcA;
  input [1:0]ALUASrc;
  input [31:0]RD1;
  input [31:0]PC;

  wire [1:0]ALUASrc;
  wire [31:0]PC;
  wire [31:0]RD1;
  wire [31:0]SrcA;

  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[0]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[0]),
        .I2(PC[0]),
        .I3(ALUASrc[1]),
        .O(SrcA[0]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[10]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[10]),
        .I2(PC[10]),
        .I3(ALUASrc[1]),
        .O(SrcA[10]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[11]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[11]),
        .I2(PC[11]),
        .I3(ALUASrc[1]),
        .O(SrcA[11]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[12]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[12]),
        .I2(PC[12]),
        .I3(ALUASrc[1]),
        .O(SrcA[12]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[13]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[13]),
        .I2(PC[13]),
        .I3(ALUASrc[1]),
        .O(SrcA[13]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[14]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[14]),
        .I2(PC[14]),
        .I3(ALUASrc[1]),
        .O(SrcA[14]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[15]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[15]),
        .I2(PC[15]),
        .I3(ALUASrc[1]),
        .O(SrcA[15]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[16]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[16]),
        .I2(PC[16]),
        .I3(ALUASrc[1]),
        .O(SrcA[16]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[17]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[17]),
        .I2(PC[17]),
        .I3(ALUASrc[1]),
        .O(SrcA[17]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[18]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[18]),
        .I2(PC[18]),
        .I3(ALUASrc[1]),
        .O(SrcA[18]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[19]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[19]),
        .I2(PC[19]),
        .I3(ALUASrc[1]),
        .O(SrcA[19]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[1]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[1]),
        .I2(PC[1]),
        .I3(ALUASrc[1]),
        .O(SrcA[1]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[20]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[20]),
        .I2(PC[20]),
        .I3(ALUASrc[1]),
        .O(SrcA[20]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[21]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[21]),
        .I2(PC[21]),
        .I3(ALUASrc[1]),
        .O(SrcA[21]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[22]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[22]),
        .I2(PC[22]),
        .I3(ALUASrc[1]),
        .O(SrcA[22]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[23]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[23]),
        .I2(PC[23]),
        .I3(ALUASrc[1]),
        .O(SrcA[23]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[24]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[24]),
        .I2(PC[24]),
        .I3(ALUASrc[1]),
        .O(SrcA[24]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[25]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[25]),
        .I2(PC[25]),
        .I3(ALUASrc[1]),
        .O(SrcA[25]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[26]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[26]),
        .I2(PC[26]),
        .I3(ALUASrc[1]),
        .O(SrcA[26]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[27]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[27]),
        .I2(PC[27]),
        .I3(ALUASrc[1]),
        .O(SrcA[27]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[28]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[28]),
        .I2(PC[28]),
        .I3(ALUASrc[1]),
        .O(SrcA[28]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[29]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[29]),
        .I2(PC[29]),
        .I3(ALUASrc[1]),
        .O(SrcA[29]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[2]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[2]),
        .I2(PC[2]),
        .I3(ALUASrc[1]),
        .O(SrcA[2]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[30]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[30]),
        .I2(PC[30]),
        .I3(ALUASrc[1]),
        .O(SrcA[30]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[31]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[31]),
        .I2(PC[31]),
        .I3(ALUASrc[1]),
        .O(SrcA[31]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[3]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[3]),
        .I2(PC[3]),
        .I3(ALUASrc[1]),
        .O(SrcA[3]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[4]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[4]),
        .I2(PC[4]),
        .I3(ALUASrc[1]),
        .O(SrcA[4]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[5]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[5]),
        .I2(PC[5]),
        .I3(ALUASrc[1]),
        .O(SrcA[5]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[6]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[6]),
        .I2(PC[6]),
        .I3(ALUASrc[1]),
        .O(SrcA[6]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[7]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[7]),
        .I2(PC[7]),
        .I3(ALUASrc[1]),
        .O(SrcA[7]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[8]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[8]),
        .I2(PC[8]),
        .I3(ALUASrc[1]),
        .O(SrcA[8]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \SrcA[9]_INST_0 
       (.I0(ALUASrc[0]),
        .I1(RD1[9]),
        .I2(PC[9]),
        .I3(ALUASrc[1]),
        .O(SrcA[9]));
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
