// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_immediate_extended_0_0/RISCVPROJECT_immediate_extended_0_0_sim_netlist.v
// Design      : RISCVPROJECT_immediate_extended_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_immediate_extended_0_0,immediate_extended,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "immediate_extended,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_immediate_extended_0_0
   (Instr,
    ImmSrc,
    ImmExt);
  input [31:7]Instr;
  input [2:0]ImmSrc;
  output [31:0]ImmExt;

  wire [31:0]ImmExt;
  wire [2:0]ImmSrc;
  wire [31:7]Instr;

  RISCVPROJECT_immediate_extended_0_0_immediate_extended inst
       (.ImmExt(ImmExt),
        .ImmSrc(ImmSrc),
        .Instr(Instr));
endmodule

(* ORIG_REF_NAME = "immediate_extended" *) 
module RISCVPROJECT_immediate_extended_0_0_immediate_extended
   (ImmExt,
    Instr,
    ImmSrc);
  output [31:0]ImmExt;
  input [31:7]Instr;
  input [2:0]ImmSrc;

  wire [31:0]ImmExt;
  wire [2:0]ImmSrc;
  wire [31:7]Instr;

  LUT5 #(
    .INIT(32'h000000E2)) 
    \ImmExt[0]_INST_0 
       (.I0(Instr[20]),
        .I1(ImmSrc[0]),
        .I2(Instr[7]),
        .I3(ImmSrc[1]),
        .I4(ImmSrc[2]),
        .O(ImmExt[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[10]_INST_0 
       (.I0(Instr[30]),
        .I1(ImmSrc[2]),
        .O(ImmExt[10]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \ImmExt[11]_INST_0 
       (.I0(Instr[20]),
        .I1(ImmSrc[0]),
        .I2(Instr[7]),
        .I3(ImmSrc[1]),
        .I4(Instr[31]),
        .I5(ImmSrc[2]),
        .O(ImmExt[11]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[12]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[12]),
        .I4(ImmSrc[0]),
        .O(ImmExt[12]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[13]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[13]),
        .I4(ImmSrc[0]),
        .O(ImmExt[13]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[14]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[14]),
        .I4(ImmSrc[0]),
        .O(ImmExt[14]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[15]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[15]),
        .I4(ImmSrc[0]),
        .O(ImmExt[15]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[16]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[16]),
        .I4(ImmSrc[0]),
        .O(ImmExt[16]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[17]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[17]),
        .I4(ImmSrc[0]),
        .O(ImmExt[17]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[18]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[18]),
        .I4(ImmSrc[0]),
        .O(ImmExt[18]));
  LUT5 #(
    .INIT(32'h0E023A0A)) 
    \ImmExt[19]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[19]),
        .I4(ImmSrc[0]),
        .O(ImmExt[19]));
  LUT5 #(
    .INIT(32'h0000ED48)) 
    \ImmExt[1]_INST_0 
       (.I0(ImmSrc[1]),
        .I1(Instr[8]),
        .I2(ImmSrc[0]),
        .I3(Instr[21]),
        .I4(ImmSrc[2]),
        .O(ImmExt[1]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[20]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[20]),
        .I4(ImmSrc[0]),
        .O(ImmExt[20]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[21]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[21]),
        .I4(ImmSrc[0]),
        .O(ImmExt[21]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[22]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[22]),
        .I4(ImmSrc[0]),
        .O(ImmExt[22]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[23]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[23]),
        .I4(ImmSrc[0]),
        .O(ImmExt[23]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[24]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[24]),
        .I4(ImmSrc[0]),
        .O(ImmExt[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[25]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[25]),
        .I4(ImmSrc[0]),
        .O(ImmExt[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[26]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[26]),
        .I4(ImmSrc[0]),
        .O(ImmExt[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[27]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[27]),
        .I4(ImmSrc[0]),
        .O(ImmExt[27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[28]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[28]),
        .I4(ImmSrc[0]),
        .O(ImmExt[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[29]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[29]),
        .I4(ImmSrc[0]),
        .O(ImmExt[29]));
  LUT5 #(
    .INIT(32'h0000ED48)) 
    \ImmExt[2]_INST_0 
       (.I0(ImmSrc[1]),
        .I1(Instr[9]),
        .I2(ImmSrc[0]),
        .I3(Instr[22]),
        .I4(ImmSrc[2]),
        .O(ImmExt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \ImmExt[30]_INST_0 
       (.I0(Instr[31]),
        .I1(ImmSrc[1]),
        .I2(ImmSrc[2]),
        .I3(Instr[30]),
        .I4(ImmSrc[0]),
        .O(ImmExt[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3070)) 
    \ImmExt[31]_INST_0 
       (.I0(ImmSrc[1]),
        .I1(ImmSrc[2]),
        .I2(Instr[31]),
        .I3(ImmSrc[0]),
        .O(ImmExt[31]));
  LUT5 #(
    .INIT(32'h0000ED48)) 
    \ImmExt[3]_INST_0 
       (.I0(ImmSrc[1]),
        .I1(Instr[10]),
        .I2(ImmSrc[0]),
        .I3(Instr[23]),
        .I4(ImmSrc[2]),
        .O(ImmExt[3]));
  LUT5 #(
    .INIT(32'h0000ED48)) 
    \ImmExt[4]_INST_0 
       (.I0(ImmSrc[1]),
        .I1(Instr[11]),
        .I2(ImmSrc[0]),
        .I3(Instr[24]),
        .I4(ImmSrc[2]),
        .O(ImmExt[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[5]_INST_0 
       (.I0(Instr[25]),
        .I1(ImmSrc[2]),
        .O(ImmExt[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[6]_INST_0 
       (.I0(Instr[26]),
        .I1(ImmSrc[2]),
        .O(ImmExt[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[7]_INST_0 
       (.I0(Instr[27]),
        .I1(ImmSrc[2]),
        .O(ImmExt[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[8]_INST_0 
       (.I0(Instr[28]),
        .I1(ImmSrc[2]),
        .O(ImmExt[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ImmExt[9]_INST_0 
       (.I0(Instr[29]),
        .I1(ImmSrc[2]),
        .O(ImmExt[9]));
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
