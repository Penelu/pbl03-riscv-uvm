// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:42 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_src_0_0/RISCVPROJECT_mux_alu_src_0_0_sim_netlist.v
// Design      : RISCVPROJECT_mux_alu_src_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_mux_alu_src_0_0,mux_alu_src,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux_alu_src,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_mux_alu_src_0_0
   (RD2,
    ImmExt,
    ALUSrc,
    SrcB);
  input [31:0]RD2;
  input [31:0]ImmExt;
  input ALUSrc;
  output [31:0]SrcB;

  wire ALUSrc;
  wire [31:0]ImmExt;
  wire [31:0]RD2;
  wire [31:0]SrcB;

  RISCVPROJECT_mux_alu_src_0_0_mux_alu_src inst
       (.ALUSrc(ALUSrc),
        .ImmExt(ImmExt),
        .RD2(RD2),
        .SrcB(SrcB));
endmodule

(* ORIG_REF_NAME = "mux_alu_src" *) 
module RISCVPROJECT_mux_alu_src_0_0_mux_alu_src
   (SrcB,
    ImmExt,
    RD2,
    ALUSrc);
  output [31:0]SrcB;
  input [31:0]ImmExt;
  input [31:0]RD2;
  input ALUSrc;

  wire ALUSrc;
  wire [31:0]ImmExt;
  wire [31:0]RD2;
  wire [31:0]SrcB;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[0]_INST_0 
       (.I0(ImmExt[0]),
        .I1(RD2[0]),
        .I2(ALUSrc),
        .O(SrcB[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[10]_INST_0 
       (.I0(ImmExt[10]),
        .I1(RD2[10]),
        .I2(ALUSrc),
        .O(SrcB[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[11]_INST_0 
       (.I0(ImmExt[11]),
        .I1(RD2[11]),
        .I2(ALUSrc),
        .O(SrcB[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[12]_INST_0 
       (.I0(ImmExt[12]),
        .I1(RD2[12]),
        .I2(ALUSrc),
        .O(SrcB[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[13]_INST_0 
       (.I0(ImmExt[13]),
        .I1(RD2[13]),
        .I2(ALUSrc),
        .O(SrcB[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[14]_INST_0 
       (.I0(ImmExt[14]),
        .I1(RD2[14]),
        .I2(ALUSrc),
        .O(SrcB[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[15]_INST_0 
       (.I0(ImmExt[15]),
        .I1(RD2[15]),
        .I2(ALUSrc),
        .O(SrcB[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[16]_INST_0 
       (.I0(ImmExt[16]),
        .I1(RD2[16]),
        .I2(ALUSrc),
        .O(SrcB[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[17]_INST_0 
       (.I0(ImmExt[17]),
        .I1(RD2[17]),
        .I2(ALUSrc),
        .O(SrcB[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[18]_INST_0 
       (.I0(ImmExt[18]),
        .I1(RD2[18]),
        .I2(ALUSrc),
        .O(SrcB[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[19]_INST_0 
       (.I0(ImmExt[19]),
        .I1(RD2[19]),
        .I2(ALUSrc),
        .O(SrcB[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[1]_INST_0 
       (.I0(ImmExt[1]),
        .I1(RD2[1]),
        .I2(ALUSrc),
        .O(SrcB[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[20]_INST_0 
       (.I0(ImmExt[20]),
        .I1(RD2[20]),
        .I2(ALUSrc),
        .O(SrcB[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[21]_INST_0 
       (.I0(ImmExt[21]),
        .I1(RD2[21]),
        .I2(ALUSrc),
        .O(SrcB[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[22]_INST_0 
       (.I0(ImmExt[22]),
        .I1(RD2[22]),
        .I2(ALUSrc),
        .O(SrcB[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[23]_INST_0 
       (.I0(ImmExt[23]),
        .I1(RD2[23]),
        .I2(ALUSrc),
        .O(SrcB[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[24]_INST_0 
       (.I0(ImmExt[24]),
        .I1(RD2[24]),
        .I2(ALUSrc),
        .O(SrcB[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[25]_INST_0 
       (.I0(ImmExt[25]),
        .I1(RD2[25]),
        .I2(ALUSrc),
        .O(SrcB[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[26]_INST_0 
       (.I0(ImmExt[26]),
        .I1(RD2[26]),
        .I2(ALUSrc),
        .O(SrcB[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[27]_INST_0 
       (.I0(ImmExt[27]),
        .I1(RD2[27]),
        .I2(ALUSrc),
        .O(SrcB[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[28]_INST_0 
       (.I0(ImmExt[28]),
        .I1(RD2[28]),
        .I2(ALUSrc),
        .O(SrcB[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[29]_INST_0 
       (.I0(ImmExt[29]),
        .I1(RD2[29]),
        .I2(ALUSrc),
        .O(SrcB[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[2]_INST_0 
       (.I0(ImmExt[2]),
        .I1(RD2[2]),
        .I2(ALUSrc),
        .O(SrcB[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[30]_INST_0 
       (.I0(ImmExt[30]),
        .I1(RD2[30]),
        .I2(ALUSrc),
        .O(SrcB[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[31]_INST_0 
       (.I0(ImmExt[31]),
        .I1(RD2[31]),
        .I2(ALUSrc),
        .O(SrcB[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[3]_INST_0 
       (.I0(ImmExt[3]),
        .I1(RD2[3]),
        .I2(ALUSrc),
        .O(SrcB[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[4]_INST_0 
       (.I0(ImmExt[4]),
        .I1(RD2[4]),
        .I2(ALUSrc),
        .O(SrcB[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[5]_INST_0 
       (.I0(ImmExt[5]),
        .I1(RD2[5]),
        .I2(ALUSrc),
        .O(SrcB[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[6]_INST_0 
       (.I0(ImmExt[6]),
        .I1(RD2[6]),
        .I2(ALUSrc),
        .O(SrcB[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[7]_INST_0 
       (.I0(ImmExt[7]),
        .I1(RD2[7]),
        .I2(ALUSrc),
        .O(SrcB[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[8]_INST_0 
       (.I0(ImmExt[8]),
        .I1(RD2[8]),
        .I2(ALUSrc),
        .O(SrcB[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \SrcB[9]_INST_0 
       (.I0(ImmExt[9]),
        .I1(RD2[9]),
        .I2(ALUSrc),
        .O(SrcB[9]));
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
