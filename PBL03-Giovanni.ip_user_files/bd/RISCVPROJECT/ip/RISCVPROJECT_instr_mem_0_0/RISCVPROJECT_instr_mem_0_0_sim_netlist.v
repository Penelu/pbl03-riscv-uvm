// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:06 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_instr_mem_0_0/RISCVPROJECT_instr_mem_0_0_sim_netlist.v
// Design      : RISCVPROJECT_instr_mem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_instr_mem_0_0,instr_mem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "instr_mem,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_instr_mem_0_0
   (A,
    RD);
  input [31:0]A;
  output [31:0]RD;

  wire \<const1> ;
  wire [31:0]A;
  wire [31:2]\^RD ;
  wire \RD[10]_INST_0_i_1_n_0 ;
  wire \RD[10]_INST_0_i_2_n_0 ;
  wire \RD[10]_INST_0_i_3_n_0 ;
  wire \RD[11]_INST_0_i_1_n_0 ;
  wire \RD[11]_INST_0_i_2_n_0 ;
  wire \RD[11]_INST_0_i_3_n_0 ;
  wire \RD[12]_INST_0_i_1_n_0 ;
  wire \RD[12]_INST_0_i_2_n_0 ;
  wire \RD[12]_INST_0_i_3_n_0 ;
  wire \RD[12]_INST_0_i_4_n_0 ;
  wire \RD[12]_INST_0_i_5_n_0 ;
  wire \RD[12]_INST_0_i_6_n_0 ;
  wire \RD[13]_INST_0_i_1_n_0 ;
  wire \RD[13]_INST_0_i_2_n_0 ;
  wire \RD[13]_INST_0_i_3_n_0 ;
  wire \RD[13]_INST_0_i_4_n_0 ;
  wire \RD[13]_INST_0_i_5_n_0 ;
  wire \RD[13]_INST_0_i_6_n_0 ;
  wire \RD[14]_INST_0_i_1_n_0 ;
  wire \RD[14]_INST_0_i_2_n_0 ;
  wire \RD[14]_INST_0_i_3_n_0 ;
  wire \RD[14]_INST_0_i_4_n_0 ;
  wire \RD[14]_INST_0_i_5_n_0 ;
  wire \RD[14]_INST_0_i_6_n_0 ;
  wire \RD[15]_INST_0_i_1_n_0 ;
  wire \RD[15]_INST_0_i_2_n_0 ;
  wire \RD[15]_INST_0_i_3_n_0 ;
  wire \RD[16]_INST_0_i_1_n_0 ;
  wire \RD[16]_INST_0_i_2_n_0 ;
  wire \RD[16]_INST_0_i_3_n_0 ;
  wire \RD[17]_INST_0_i_1_n_0 ;
  wire \RD[17]_INST_0_i_2_n_0 ;
  wire \RD[17]_INST_0_i_3_n_0 ;
  wire \RD[17]_INST_0_i_4_n_0 ;
  wire \RD[17]_INST_0_i_5_n_0 ;
  wire \RD[17]_INST_0_i_6_n_0 ;
  wire \RD[18]_INST_0_i_1_n_0 ;
  wire \RD[18]_INST_0_i_2_n_0 ;
  wire \RD[18]_INST_0_i_3_n_0 ;
  wire \RD[19]_INST_0_i_1_n_0 ;
  wire \RD[19]_INST_0_i_2_n_0 ;
  wire \RD[19]_INST_0_i_3_n_0 ;
  wire \RD[20]_INST_0_i_1_n_0 ;
  wire \RD[20]_INST_0_i_2_n_0 ;
  wire \RD[20]_INST_0_i_3_n_0 ;
  wire \RD[20]_INST_0_i_4_n_0 ;
  wire \RD[20]_INST_0_i_5_n_0 ;
  wire \RD[20]_INST_0_i_6_n_0 ;
  wire \RD[21]_INST_0_i_1_n_0 ;
  wire \RD[21]_INST_0_i_2_n_0 ;
  wire \RD[21]_INST_0_i_3_n_0 ;
  wire \RD[21]_INST_0_i_4_n_0 ;
  wire \RD[21]_INST_0_i_5_n_0 ;
  wire \RD[21]_INST_0_i_6_n_0 ;
  wire \RD[22]_INST_0_i_1_n_0 ;
  wire \RD[22]_INST_0_i_2_n_0 ;
  wire \RD[22]_INST_0_i_3_n_0 ;
  wire \RD[22]_INST_0_i_4_n_0 ;
  wire \RD[22]_INST_0_i_5_n_0 ;
  wire \RD[22]_INST_0_i_6_n_0 ;
  wire \RD[23]_INST_0_i_1_n_0 ;
  wire \RD[23]_INST_0_i_2_n_0 ;
  wire \RD[23]_INST_0_i_3_n_0 ;
  wire \RD[23]_INST_0_i_4_n_0 ;
  wire \RD[23]_INST_0_i_5_n_0 ;
  wire \RD[23]_INST_0_i_6_n_0 ;
  wire \RD[24]_INST_0_i_1_n_0 ;
  wire \RD[24]_INST_0_i_2_n_0 ;
  wire \RD[24]_INST_0_i_3_n_0 ;
  wire \RD[24]_INST_0_i_4_n_0 ;
  wire \RD[24]_INST_0_i_5_n_0 ;
  wire \RD[24]_INST_0_i_6_n_0 ;
  wire \RD[25]_INST_0_i_1_n_0 ;
  wire \RD[25]_INST_0_i_2_n_0 ;
  wire \RD[25]_INST_0_i_3_n_0 ;
  wire \RD[26]_INST_0_i_1_n_0 ;
  wire \RD[26]_INST_0_i_2_n_0 ;
  wire \RD[26]_INST_0_i_3_n_0 ;
  wire \RD[26]_INST_0_i_4_n_0 ;
  wire \RD[26]_INST_0_i_5_n_0 ;
  wire \RD[26]_INST_0_i_6_n_0 ;
  wire \RD[27]_INST_0_i_1_n_0 ;
  wire \RD[27]_INST_0_i_2_n_0 ;
  wire \RD[27]_INST_0_i_3_n_0 ;
  wire \RD[27]_INST_0_i_4_n_0 ;
  wire \RD[27]_INST_0_i_5_n_0 ;
  wire \RD[27]_INST_0_i_6_n_0 ;
  wire \RD[28]_INST_0_i_1_n_0 ;
  wire \RD[28]_INST_0_i_2_n_0 ;
  wire \RD[28]_INST_0_i_3_n_0 ;
  wire \RD[29]_INST_0_i_1_n_0 ;
  wire \RD[29]_INST_0_i_2_n_0 ;
  wire \RD[29]_INST_0_i_3_n_0 ;
  wire \RD[2]_INST_0_i_1_n_0 ;
  wire \RD[2]_INST_0_i_2_n_0 ;
  wire \RD[2]_INST_0_i_3_n_0 ;
  wire \RD[30]_INST_0_i_1_n_0 ;
  wire \RD[30]_INST_0_i_2_n_0 ;
  wire \RD[30]_INST_0_i_3_n_0 ;
  wire \RD[30]_INST_0_i_4_n_0 ;
  wire \RD[30]_INST_0_i_5_n_0 ;
  wire \RD[30]_INST_0_i_6_n_0 ;
  wire \RD[31]_INST_0_i_1_n_0 ;
  wire \RD[31]_INST_0_i_2_n_0 ;
  wire \RD[31]_INST_0_i_3_n_0 ;
  wire \RD[31]_INST_0_i_4_n_0 ;
  wire \RD[31]_INST_0_i_5_n_0 ;
  wire \RD[31]_INST_0_i_6_n_0 ;
  wire \RD[3]_INST_0_i_1_n_0 ;
  wire \RD[3]_INST_0_i_2_n_0 ;
  wire \RD[3]_INST_0_i_3_n_0 ;
  wire \RD[4]_INST_0_i_1_n_0 ;
  wire \RD[4]_INST_0_i_2_n_0 ;
  wire \RD[4]_INST_0_i_3_n_0 ;
  wire \RD[5]_INST_0_i_1_n_0 ;
  wire \RD[5]_INST_0_i_2_n_0 ;
  wire \RD[5]_INST_0_i_3_n_0 ;
  wire \RD[6]_INST_0_i_1_n_0 ;
  wire \RD[6]_INST_0_i_2_n_0 ;
  wire \RD[6]_INST_0_i_3_n_0 ;
  wire \RD[7]_INST_0_i_1_n_0 ;
  wire \RD[7]_INST_0_i_2_n_0 ;
  wire \RD[7]_INST_0_i_3_n_0 ;
  wire \RD[8]_INST_0_i_1_n_0 ;
  wire \RD[8]_INST_0_i_2_n_0 ;
  wire \RD[8]_INST_0_i_3_n_0 ;
  wire \RD[9]_INST_0_i_1_n_0 ;
  wire \RD[9]_INST_0_i_2_n_0 ;
  wire \RD[9]_INST_0_i_3_n_0 ;
  wire \RD[9]_INST_0_i_4_n_0 ;
  wire \RD[9]_INST_0_i_5_n_0 ;
  wire \RD[9]_INST_0_i_6_n_0 ;

  assign RD[31:2] = \^RD [31:2];
  assign RD[1] = \<const1> ;
  assign RD[0] = \<const1> ;
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[10]_INST_0 
       (.I0(\RD[10]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[10]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[10]_INST_0_i_3_n_0 ),
        .O(\^RD [10]));
  LUT6 #(
    .INIT(64'hC07D0872630D5E85)) 
    \RD[10]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA1004045A51A550)) 
    \RD[10]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA010001A011B0510)) 
    \RD[10]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[11]_INST_0 
       (.I0(\RD[11]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[11]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[11]_INST_0_i_3_n_0 ),
        .O(\^RD [11]));
  LUT6 #(
    .INIT(64'hD11800000C420C00)) 
    \RD[11]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0A00A04411415A)) 
    \RD[11]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0500F1B4001A010)) 
    \RD[11]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[11]_INST_0_i_3_n_0 ));
  MUXF8 \RD[12]_INST_0 
       (.I0(\RD[12]_INST_0_i_1_n_0 ),
        .I1(\RD[12]_INST_0_i_2_n_0 ),
        .O(\^RD [12]),
        .S(A[8]));
  MUXF7 \RD[12]_INST_0_i_1 
       (.I0(\RD[12]_INST_0_i_3_n_0 ),
        .I1(\RD[12]_INST_0_i_4_n_0 ),
        .O(\RD[12]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[12]_INST_0_i_2 
       (.I0(\RD[12]_INST_0_i_5_n_0 ),
        .I1(\RD[12]_INST_0_i_6_n_0 ),
        .O(\RD[12]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0A00A0F00AA0AC00)) 
    \RD[12]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4B80000)) 
    \RD[12]_INST_0_i_4 
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[6]),
        .I3(A[3]),
        .I4(A[7]),
        .O(\RD[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55000000F0AC000F)) 
    \RD[12]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h54002000)) 
    \RD[12]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .O(\RD[12]_INST_0_i_6_n_0 ));
  MUXF8 \RD[13]_INST_0 
       (.I0(\RD[13]_INST_0_i_1_n_0 ),
        .I1(\RD[13]_INST_0_i_2_n_0 ),
        .O(\^RD [13]),
        .S(A[8]));
  MUXF7 \RD[13]_INST_0_i_1 
       (.I0(\RD[13]_INST_0_i_3_n_0 ),
        .I1(\RD[13]_INST_0_i_4_n_0 ),
        .O(\RD[13]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[13]_INST_0_i_2 
       (.I0(\RD[13]_INST_0_i_5_n_0 ),
        .I1(\RD[13]_INST_0_i_6_n_0 ),
        .O(\RD[13]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'hAA0000000000A10C)) 
    \RD[13]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h804080CF804080C0)) 
    \RD[13]_INST_0_i_4 
       (.I0(A[3]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[9]),
        .O(\RD[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55000A50F0000B0F)) 
    \RD[13]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A0005A0A0550E0C)) 
    \RD[13]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[3]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[13]_INST_0_i_6_n_0 ));
  MUXF8 \RD[14]_INST_0 
       (.I0(\RD[14]_INST_0_i_1_n_0 ),
        .I1(\RD[14]_INST_0_i_2_n_0 ),
        .O(\^RD [14]),
        .S(A[8]));
  MUXF7 \RD[14]_INST_0_i_1 
       (.I0(\RD[14]_INST_0_i_3_n_0 ),
        .I1(\RD[14]_INST_0_i_4_n_0 ),
        .O(\RD[14]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[14]_INST_0_i_2 
       (.I0(\RD[14]_INST_0_i_5_n_0 ),
        .I1(\RD[14]_INST_0_i_6_n_0 ),
        .O(\RD[14]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'hAAA8A000AAA8A001)) 
    \RD[14]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA00048AAA0000)) 
    \RD[14]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55000000F000000B)) 
    \RD[14]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55500000000000C0)) 
    \RD[14]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[15]_INST_0 
       (.I0(\RD[15]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[15]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[15]_INST_0_i_3_n_0 ),
        .O(\^RD [15]));
  LUT6 #(
    .INIT(64'h2AC67DAB1CBB2B2A)) 
    \RD[15]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00114BEE00001AE0)) 
    \RD[15]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FBA0044A4E54A0A)) 
    \RD[15]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[16]_INST_0 
       (.I0(\RD[16]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[16]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[16]_INST_0_i_3_n_0 ),
        .O(\^RD [16]));
  LUT6 #(
    .INIT(64'h15CA0802DCC808C4)) 
    \RD[16]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A01ACA02A0A0C1)) 
    \RD[16]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A101AA1A41248)) 
    \RD[16]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[16]_INST_0_i_3_n_0 ));
  MUXF8 \RD[17]_INST_0 
       (.I0(\RD[17]_INST_0_i_1_n_0 ),
        .I1(\RD[17]_INST_0_i_2_n_0 ),
        .O(\^RD [17]),
        .S(A[8]));
  MUXF7 \RD[17]_INST_0_i_1 
       (.I0(\RD[17]_INST_0_i_3_n_0 ),
        .I1(\RD[17]_INST_0_i_4_n_0 ),
        .O(\RD[17]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[17]_INST_0_i_2 
       (.I0(\RD[17]_INST_0_i_5_n_0 ),
        .I1(\RD[17]_INST_0_i_6_n_0 ),
        .O(\RD[17]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0AEC00DCAC00A0AC)) 
    \RD[17]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE3C3FB8322002A80)) 
    \RD[17]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5C55FC005CE0AC0E)) 
    \RD[17]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFD5E00CFCAFAAADC)) 
    \RD[17]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[17]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[18]_INST_0 
       (.I0(\RD[18]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[18]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[18]_INST_0_i_3_n_0 ),
        .O(\^RD [18]));
  LUT6 #(
    .INIT(64'h80C04A0309790011)) 
    \RD[18]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00B00A0001A404)) 
    \RD[18]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA10AAA00A1BB0044)) 
    \RD[18]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[19]_INST_0 
       (.I0(\RD[19]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[19]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[19]_INST_0_i_3_n_0 ),
        .O(\^RD [19]));
  LUT6 #(
    .INIT(64'h800140384A080301)) 
    \RD[19]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC960938188208280)) 
    \RD[19]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE44AA0BAA411A004)) 
    \RD[19]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[19]_INST_0_i_3_n_0 ));
  MUXF8 \RD[20]_INST_0 
       (.I0(\RD[20]_INST_0_i_1_n_0 ),
        .I1(\RD[20]_INST_0_i_2_n_0 ),
        .O(\^RD [20]),
        .S(A[8]));
  MUXF7 \RD[20]_INST_0_i_1 
       (.I0(\RD[20]_INST_0_i_3_n_0 ),
        .I1(\RD[20]_INST_0_i_4_n_0 ),
        .O(\RD[20]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[20]_INST_0_i_2 
       (.I0(\RD[20]_INST_0_i_5_n_0 ),
        .I1(\RD[20]_INST_0_i_6_n_0 ),
        .O(\RD[20]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'hEE00AAE50AA0E0C0)) 
    \RD[20]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80BC883880A88808)) 
    \RD[20]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD5FCC05000CCA55F)) 
    \RD[20]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[6]),
        .I5(A[5]),
        .O(\RD[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00550CA0F00ACAC0)) 
    \RD[20]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[20]_INST_0_i_6_n_0 ));
  MUXF8 \RD[21]_INST_0 
       (.I0(\RD[21]_INST_0_i_1_n_0 ),
        .I1(\RD[21]_INST_0_i_2_n_0 ),
        .O(\^RD [21]),
        .S(A[8]));
  MUXF7 \RD[21]_INST_0_i_1 
       (.I0(\RD[21]_INST_0_i_3_n_0 ),
        .I1(\RD[21]_INST_0_i_4_n_0 ),
        .O(\RD[21]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[21]_INST_0_i_2 
       (.I0(\RD[21]_INST_0_i_5_n_0 ),
        .I1(\RD[21]_INST_0_i_6_n_0 ),
        .O(\RD[21]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h2A88899022808080)) 
    \RD[21]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[9]),
        .O(\RD[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCC01FC0C80002000)) 
    \RD[21]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[4]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00500054A0A4A005)) 
    \RD[21]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0D550C0C0EC0500)) 
    \RD[21]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[21]_INST_0_i_6_n_0 ));
  MUXF8 \RD[22]_INST_0 
       (.I0(\RD[22]_INST_0_i_1_n_0 ),
        .I1(\RD[22]_INST_0_i_2_n_0 ),
        .O(\^RD [22]),
        .S(A[8]));
  MUXF7 \RD[22]_INST_0_i_1 
       (.I0(\RD[22]_INST_0_i_3_n_0 ),
        .I1(\RD[22]_INST_0_i_4_n_0 ),
        .O(\RD[22]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[22]_INST_0_i_2 
       (.I0(\RD[22]_INST_0_i_5_n_0 ),
        .I1(\RD[22]_INST_0_i_6_n_0 ),
        .O(\RD[22]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'hB310A220A00C005A)) 
    \RD[22]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEA001C00000EAA0)) 
    \RD[22]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080083800A288080)) 
    \RD[22]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50AC00C0A0255000)) 
    \RD[22]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[22]_INST_0_i_6_n_0 ));
  MUXF8 \RD[23]_INST_0 
       (.I0(\RD[23]_INST_0_i_1_n_0 ),
        .I1(\RD[23]_INST_0_i_2_n_0 ),
        .O(\^RD [23]),
        .S(A[8]));
  MUXF7 \RD[23]_INST_0_i_1 
       (.I0(\RD[23]_INST_0_i_3_n_0 ),
        .I1(\RD[23]_INST_0_i_4_n_0 ),
        .O(\RD[23]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[23]_INST_0_i_2 
       (.I0(\RD[23]_INST_0_i_5_n_0 ),
        .I1(\RD[23]_INST_0_i_6_n_0 ),
        .O(\RD[23]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT5 #(
    .INIT(32'h00004002)) 
    \RD[23]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .O(\RD[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0050100000032C0)) 
    \RD[23]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[23]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0AA28184)) 
    \RD[23]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .O(\RD[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00C00000C0430CB0)) 
    \RD[23]_INST_0_i_6 
       (.I0(A[9]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[23]_INST_0_i_6_n_0 ));
  MUXF8 \RD[24]_INST_0 
       (.I0(\RD[24]_INST_0_i_1_n_0 ),
        .I1(\RD[24]_INST_0_i_2_n_0 ),
        .O(\^RD [24]),
        .S(A[8]));
  MUXF7 \RD[24]_INST_0_i_1 
       (.I0(\RD[24]_INST_0_i_3_n_0 ),
        .I1(\RD[24]_INST_0_i_4_n_0 ),
        .O(\RD[24]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[24]_INST_0_i_2 
       (.I0(\RD[24]_INST_0_i_5_n_0 ),
        .I1(\RD[24]_INST_0_i_6_n_0 ),
        .O(\RD[24]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0000000060406000)) 
    \RD[24]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000C00000100C21)) 
    \RD[24]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0510405000000000)) 
    \RD[24]_INST_0_i_5 
       (.I0(A[9]),
        .I1(A[4]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[7]),
        .O(\RD[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00C0003022000000)) 
    \RD[24]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[24]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \RD[25]_INST_0 
       (.I0(\RD[25]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[25]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[25]_INST_0_i_3_n_0 ),
        .O(\^RD [25]));
  LUT6 #(
    .INIT(64'h0080049400000000)) 
    \RD[25]_INST_0_i_1 
       (.I0(A[5]),
        .I1(A[6]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[9]),
        .I5(A[7]),
        .O(\RD[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA00000A001121141)) 
    \RD[25]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0100031000210)) 
    \RD[25]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[25]_INST_0_i_3_n_0 ));
  MUXF8 \RD[26]_INST_0 
       (.I0(\RD[26]_INST_0_i_1_n_0 ),
        .I1(\RD[26]_INST_0_i_2_n_0 ),
        .O(\^RD [26]),
        .S(A[8]));
  MUXF7 \RD[26]_INST_0_i_1 
       (.I0(\RD[26]_INST_0_i_3_n_0 ),
        .I1(\RD[26]_INST_0_i_4_n_0 ),
        .O(\RD[26]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[26]_INST_0_i_2 
       (.I0(\RD[26]_INST_0_i_5_n_0 ),
        .I1(\RD[26]_INST_0_i_6_n_0 ),
        .O(\RD[26]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0000000004400048)) 
    \RD[26]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE00A000400011201)) 
    \RD[26]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[4]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[3]),
        .O(\RD[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \RD[26]_INST_0_i_5 
       (.I0(A[9]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[7]),
        .O(\RD[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \RD[26]_INST_0_i_6 
       (.I0(A[9]),
        .I1(A[6]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[3]),
        .I5(A[7]),
        .O(\RD[26]_INST_0_i_6_n_0 ));
  MUXF8 \RD[27]_INST_0 
       (.I0(\RD[27]_INST_0_i_1_n_0 ),
        .I1(\RD[27]_INST_0_i_2_n_0 ),
        .O(\^RD [27]),
        .S(A[8]));
  MUXF7 \RD[27]_INST_0_i_1 
       (.I0(\RD[27]_INST_0_i_3_n_0 ),
        .I1(\RD[27]_INST_0_i_4_n_0 ),
        .O(\RD[27]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[27]_INST_0_i_2 
       (.I0(\RD[27]_INST_0_i_5_n_0 ),
        .I1(\RD[27]_INST_0_i_6_n_0 ),
        .O(\RD[27]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0000000066011200)) 
    \RD[27]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2002000E01231001)) 
    \RD[27]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[4]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[3]),
        .O(\RD[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1001000000000000)) 
    \RD[27]_INST_0_i_5 
       (.I0(A[9]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[3]),
        .I5(A[7]),
        .O(\RD[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00000200)) 
    \RD[27]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[27]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[28]_INST_0 
       (.I0(\RD[28]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[28]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[28]_INST_0_i_3_n_0 ),
        .O(\^RD [28]));
  LUT6 #(
    .INIT(64'hC000400400000000)) 
    \RD[28]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[3]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[7]),
        .O(\RD[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000222205AF45)) 
    \RD[28]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[9]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2200020227001202)) 
    \RD[28]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[28]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[29]_INST_0 
       (.I0(\RD[29]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[29]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[29]_INST_0_i_3_n_0 ),
        .O(\^RD [29]));
  LUT6 #(
    .INIT(64'hC000420400000000)) 
    \RD[29]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[3]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[7]),
        .O(\RD[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000020211A151)) 
    \RD[29]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030104030)) 
    \RD[29]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[4]),
        .I3(A[3]),
        .I4(A[5]),
        .I5(A[9]),
        .O(\RD[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[2]_INST_0 
       (.I0(\RD[2]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[2]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[2]_INST_0_i_3_n_0 ),
        .O(\^RD [2]));
  LUT6 #(
    .INIT(64'h498400224A51004A)) 
    \RD[2]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[5]),
        .I3(A[3]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5101A11B511A1AB0)) 
    \RD[2]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1505B0A411005BAB)) 
    \RD[2]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[2]_INST_0_i_3_n_0 ));
  MUXF8 \RD[30]_INST_0 
       (.I0(\RD[30]_INST_0_i_1_n_0 ),
        .I1(\RD[30]_INST_0_i_2_n_0 ),
        .O(\^RD [30]),
        .S(A[8]));
  MUXF7 \RD[30]_INST_0_i_1 
       (.I0(\RD[30]_INST_0_i_3_n_0 ),
        .I1(\RD[30]_INST_0_i_4_n_0 ),
        .O(\RD[30]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[30]_INST_0_i_2 
       (.I0(\RD[30]_INST_0_i_5_n_0 ),
        .I1(\RD[30]_INST_0_i_6_n_0 ),
        .O(\RD[30]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h00001000210002C0)) 
    \RD[30]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000020A11A1D1)) 
    \RD[30]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8800000C88000008)) 
    \RD[30]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000020C00000200)) 
    \RD[30]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[30]_INST_0_i_6_n_0 ));
  MUXF8 \RD[31]_INST_0 
       (.I0(\RD[31]_INST_0_i_1_n_0 ),
        .I1(\RD[31]_INST_0_i_2_n_0 ),
        .O(\^RD [31]),
        .S(A[8]));
  MUXF7 \RD[31]_INST_0_i_1 
       (.I0(\RD[31]_INST_0_i_3_n_0 ),
        .I1(\RD[31]_INST_0_i_4_n_0 ),
        .O(\RD[31]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[31]_INST_0_i_2 
       (.I0(\RD[31]_INST_0_i_5_n_0 ),
        .I1(\RD[31]_INST_0_i_6_n_0 ),
        .O(\RD[31]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h0000000024001200)) 
    \RD[31]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0A11A151)) 
    \RD[31]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5001000000000000)) 
    \RD[31]_INST_0_i_5 
       (.I0(A[9]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[3]),
        .I5(A[7]),
        .O(\RD[31]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \RD[31]_INST_0_i_6 
       (.I0(A[3]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[7]),
        .O(\RD[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A454545404040)) 
    \RD[3]_INST_0 
       (.I0(A[8]),
        .I1(\RD[3]_INST_0_i_1_n_0 ),
        .I2(A[2]),
        .I3(\RD[3]_INST_0_i_2_n_0 ),
        .I4(A[7]),
        .I5(\RD[3]_INST_0_i_3_n_0 ),
        .O(\^RD [3]));
  LUT6 #(
    .INIT(64'h0000800000068000)) 
    \RD[3]_INST_0_i_1 
       (.I0(A[7]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[9]),
        .O(\RD[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \RD[3]_INST_0_i_2 
       (.I0(A[6]),
        .I1(A[5]),
        .I2(A[4]),
        .I3(A[3]),
        .O(\RD[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \RD[3]_INST_0_i_3 
       (.I0(A[3]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[9]),
        .O(\RD[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[4]_INST_0 
       (.I0(\RD[4]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[4]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[4]_INST_0_i_3_n_0 ),
        .O(\^RD [4]));
  LUT6 #(
    .INIT(64'hF76938DCE245D455)) 
    \RD[4]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFEE115CDDF1B)) 
    \RD[4]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECA0E3F3A131EFF1)) 
    \RD[4]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[5]_INST_0 
       (.I0(\RD[5]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[5]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[5]_INST_0_i_3_n_0 ),
        .O(\^RD [5]));
  LUT6 #(
    .INIT(64'h481D452BD24AA0BA)) 
    \RD[5]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40EA4FBA01B55EF0)) 
    \RD[5]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFF4AE1044104B)) 
    \RD[5]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[6]_INST_0 
       (.I0(\RD[6]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[6]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[6]_INST_0_i_3_n_0 ),
        .O(\^RD [6]));
  LUT6 #(
    .INIT(64'h0815452B120A200A)) 
    \RD[6]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4001451EEAA0BAE0)) 
    \RD[6]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[6]),
        .O(\RD[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5B5F5A4E1404100A)) 
    \RD[6]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[3]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[7]_INST_0 
       (.I0(\RD[7]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[7]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[7]_INST_0_i_3_n_0 ),
        .O(\^RD [7]));
  LUT6 #(
    .INIT(64'h01658E8D86559010)) 
    \RD[7]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\RD[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h511B45E11FFA1EF0)) 
    \RD[7]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1BB111AB41E41AEE)) 
    \RD[7]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[5]),
        .I4(A[6]),
        .I5(A[4]),
        .O(\RD[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RD[8]_INST_0 
       (.I0(\RD[8]_INST_0_i_1_n_0 ),
        .I1(A[8]),
        .I2(\RD[8]_INST_0_i_2_n_0 ),
        .I3(A[2]),
        .I4(\RD[8]_INST_0_i_3_n_0 ),
        .O(\^RD [8]));
  LUT6 #(
    .INIT(64'h36286254699DA445)) 
    \RD[8]_INST_0_i_1 
       (.I0(A[2]),
        .I1(A[7]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[5]),
        .I5(A[6]),
        .O(\RD[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A00004FE41510F)) 
    \RD[8]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[6]),
        .I5(A[5]),
        .O(\RD[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444005A0EAE004B1)) 
    \RD[8]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[3]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[8]_INST_0_i_3_n_0 ));
  MUXF8 \RD[9]_INST_0 
       (.I0(\RD[9]_INST_0_i_1_n_0 ),
        .I1(\RD[9]_INST_0_i_2_n_0 ),
        .O(\^RD [9]),
        .S(A[8]));
  MUXF7 \RD[9]_INST_0_i_1 
       (.I0(\RD[9]_INST_0_i_3_n_0 ),
        .I1(\RD[9]_INST_0_i_4_n_0 ),
        .O(\RD[9]_INST_0_i_1_n_0 ),
        .S(A[2]));
  MUXF7 \RD[9]_INST_0_i_2 
       (.I0(\RD[9]_INST_0_i_5_n_0 ),
        .I1(\RD[9]_INST_0_i_6_n_0 ),
        .O(\RD[9]_INST_0_i_2_n_0 ),
        .S(A[2]));
  LUT6 #(
    .INIT(64'h6F45F9412A00A800)) 
    \RD[9]_INST_0_i_3 
       (.I0(A[7]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[3]),
        .I5(A[9]),
        .O(\RD[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0AEE00EA4A014)) 
    \RD[9]_INST_0_i_4 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[6]),
        .I3(A[5]),
        .I4(A[4]),
        .I5(A[3]),
        .O(\RD[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF55E45FA54AF4454)) 
    \RD[9]_INST_0_i_5 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF50E00F45FFF41A4)) 
    \RD[9]_INST_0_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .I2(A[3]),
        .I3(A[6]),
        .I4(A[5]),
        .I5(A[4]),
        .O(\RD[9]_INST_0_i_6_n_0 ));
  VCC VCC
       (.P(\<const1> ));
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
