// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Oct 14 15:50:19 2026
// Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_alu_0_0/RISCVPROJECT_alu_0_0_sim_netlist.v
// Design      : RISCVPROJECT_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RISCVPROJECT_alu_0_0,alu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alu,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module RISCVPROJECT_alu_0_0
   (A,
    B,
    ALUControl,
    Result,
    Zero,
    LessSigned,
    LessUnsigned);
  input [31:0]A;
  input [31:0]B;
  input [2:0]ALUControl;
  output [31:0]Result;
  output Zero;
  output LessSigned;
  output LessUnsigned;

  wire [31:0]A;
  wire [2:0]ALUControl;
  wire [31:0]B;
  wire LessSigned;
  wire LessUnsigned;
  wire [31:0]Result;
  wire Zero;

  RISCVPROJECT_alu_0_0_alu inst
       (.A(A),
        .ALUControl(ALUControl),
        .B(B),
        .LessSigned(LessSigned),
        .LessUnsigned(LessUnsigned),
        .Result(Result),
        .Zero(Zero));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module RISCVPROJECT_alu_0_0_alu
   (Zero,
    Result,
    LessSigned,
    LessUnsigned,
    B,
    A,
    ALUControl);
  output Zero;
  output [31:0]Result;
  output LessSigned;
  output LessUnsigned;
  input [31:0]B;
  input [31:0]A;
  input [2:0]ALUControl;

  wire [31:0]A;
  wire [2:0]ALUControl;
  wire [31:0]B;
  wire LessSigned;
  wire LessSigned_carry__0_i_1_n_0;
  wire LessSigned_carry__0_i_2_n_0;
  wire LessSigned_carry__0_i_3_n_0;
  wire LessSigned_carry__0_i_4_n_0;
  wire LessSigned_carry__0_i_5_n_0;
  wire LessSigned_carry__0_i_6_n_0;
  wire LessSigned_carry__0_i_7_n_0;
  wire LessSigned_carry__0_i_8_n_0;
  wire LessSigned_carry__0_n_0;
  wire LessSigned_carry__0_n_1;
  wire LessSigned_carry__0_n_2;
  wire LessSigned_carry__0_n_3;
  wire LessSigned_carry__1_i_1_n_0;
  wire LessSigned_carry__1_i_2_n_0;
  wire LessSigned_carry__1_i_3_n_0;
  wire LessSigned_carry__1_i_4_n_0;
  wire LessSigned_carry__1_i_5_n_0;
  wire LessSigned_carry__1_i_6_n_0;
  wire LessSigned_carry__1_i_7_n_0;
  wire LessSigned_carry__1_i_8_n_0;
  wire LessSigned_carry__1_n_0;
  wire LessSigned_carry__1_n_1;
  wire LessSigned_carry__1_n_2;
  wire LessSigned_carry__1_n_3;
  wire LessSigned_carry__2_i_1_n_0;
  wire LessSigned_carry__2_i_2_n_0;
  wire LessSigned_carry__2_i_3_n_0;
  wire LessSigned_carry__2_i_4_n_0;
  wire LessSigned_carry__2_i_5_n_0;
  wire LessSigned_carry__2_i_6_n_0;
  wire LessSigned_carry__2_i_7_n_0;
  wire LessSigned_carry__2_i_8_n_0;
  wire LessSigned_carry__2_n_1;
  wire LessSigned_carry__2_n_2;
  wire LessSigned_carry__2_n_3;
  wire LessSigned_carry_i_1_n_0;
  wire LessSigned_carry_i_2_n_0;
  wire LessSigned_carry_i_3_n_0;
  wire LessSigned_carry_i_4_n_0;
  wire LessSigned_carry_i_5_n_0;
  wire LessSigned_carry_i_6_n_0;
  wire LessSigned_carry_i_7_n_0;
  wire LessSigned_carry_i_8_n_0;
  wire LessSigned_carry_n_0;
  wire LessSigned_carry_n_1;
  wire LessSigned_carry_n_2;
  wire LessSigned_carry_n_3;
  wire LessUnsigned;
  wire LessUnsigned_carry__0_n_0;
  wire LessUnsigned_carry__0_n_1;
  wire LessUnsigned_carry__0_n_2;
  wire LessUnsigned_carry__0_n_3;
  wire LessUnsigned_carry__1_n_0;
  wire LessUnsigned_carry__1_n_1;
  wire LessUnsigned_carry__1_n_2;
  wire LessUnsigned_carry__1_n_3;
  wire LessUnsigned_carry__2_n_1;
  wire LessUnsigned_carry__2_n_2;
  wire LessUnsigned_carry__2_n_3;
  wire LessUnsigned_carry_i_1__0_n_0;
  wire LessUnsigned_carry_i_1__1_n_0;
  wire LessUnsigned_carry_i_1__2_n_0;
  wire LessUnsigned_carry_i_1_n_0;
  wire LessUnsigned_carry_i_2__0_n_0;
  wire LessUnsigned_carry_i_2__1_n_0;
  wire LessUnsigned_carry_i_2__2_n_0;
  wire LessUnsigned_carry_i_2_n_0;
  wire LessUnsigned_carry_i_3__0_n_0;
  wire LessUnsigned_carry_i_3__1_n_0;
  wire LessUnsigned_carry_i_3__2_n_0;
  wire LessUnsigned_carry_i_3_n_0;
  wire LessUnsigned_carry_i_4__0_n_0;
  wire LessUnsigned_carry_i_4__1_n_0;
  wire LessUnsigned_carry_i_4__2_n_0;
  wire LessUnsigned_carry_i_4_n_0;
  wire LessUnsigned_carry_i_5__0_n_0;
  wire LessUnsigned_carry_i_5__1_n_0;
  wire LessUnsigned_carry_i_5__2_n_0;
  wire LessUnsigned_carry_i_5_n_0;
  wire LessUnsigned_carry_i_6__0_n_0;
  wire LessUnsigned_carry_i_6__1_n_0;
  wire LessUnsigned_carry_i_6__2_n_0;
  wire LessUnsigned_carry_i_6_n_0;
  wire LessUnsigned_carry_i_7__0_n_0;
  wire LessUnsigned_carry_i_7__1_n_0;
  wire LessUnsigned_carry_i_7__2_n_0;
  wire LessUnsigned_carry_i_7_n_0;
  wire LessUnsigned_carry_i_8__0_n_0;
  wire LessUnsigned_carry_i_8__1_n_0;
  wire LessUnsigned_carry_i_8__2_n_0;
  wire LessUnsigned_carry_i_8_n_0;
  wire LessUnsigned_carry_n_0;
  wire LessUnsigned_carry_n_1;
  wire LessUnsigned_carry_n_2;
  wire LessUnsigned_carry_n_3;
  wire [31:0]Result;
  wire Result0_carry__0_i_1_n_0;
  wire Result0_carry__0_i_2_n_0;
  wire Result0_carry__0_i_3_n_0;
  wire Result0_carry__0_i_4_n_0;
  wire Result0_carry__0_n_0;
  wire Result0_carry__0_n_1;
  wire Result0_carry__0_n_2;
  wire Result0_carry__0_n_3;
  wire Result0_carry__1_i_1_n_0;
  wire Result0_carry__1_i_2_n_0;
  wire Result0_carry__1_i_3_n_0;
  wire Result0_carry__1_i_4_n_0;
  wire Result0_carry__1_n_0;
  wire Result0_carry__1_n_1;
  wire Result0_carry__1_n_2;
  wire Result0_carry__1_n_3;
  wire Result0_carry__2_i_1_n_0;
  wire Result0_carry__2_i_2_n_0;
  wire Result0_carry__2_i_3_n_0;
  wire Result0_carry__2_i_4_n_0;
  wire Result0_carry__2_n_0;
  wire Result0_carry__2_n_1;
  wire Result0_carry__2_n_2;
  wire Result0_carry__2_n_3;
  wire Result0_carry__3_i_1_n_0;
  wire Result0_carry__3_i_2_n_0;
  wire Result0_carry__3_i_3_n_0;
  wire Result0_carry__3_i_4_n_0;
  wire Result0_carry__3_n_0;
  wire Result0_carry__3_n_1;
  wire Result0_carry__3_n_2;
  wire Result0_carry__3_n_3;
  wire Result0_carry__4_i_1_n_0;
  wire Result0_carry__4_i_2_n_0;
  wire Result0_carry__4_i_3_n_0;
  wire Result0_carry__4_i_4_n_0;
  wire Result0_carry__4_n_0;
  wire Result0_carry__4_n_1;
  wire Result0_carry__4_n_2;
  wire Result0_carry__4_n_3;
  wire Result0_carry__5_i_1_n_0;
  wire Result0_carry__5_i_2_n_0;
  wire Result0_carry__5_i_3_n_0;
  wire Result0_carry__5_i_4_n_0;
  wire Result0_carry__5_n_0;
  wire Result0_carry__5_n_1;
  wire Result0_carry__5_n_2;
  wire Result0_carry__5_n_3;
  wire Result0_carry__6_i_1_n_0;
  wire Result0_carry__6_i_2_n_0;
  wire Result0_carry__6_i_3_n_0;
  wire Result0_carry__6_i_4_n_0;
  wire Result0_carry__6_n_1;
  wire Result0_carry__6_n_2;
  wire Result0_carry__6_n_3;
  wire Result0_carry_i_1_n_0;
  wire Result0_carry_i_2_n_0;
  wire Result0_carry_i_3_n_0;
  wire Result0_carry_i_4_n_0;
  wire Result0_carry_n_0;
  wire Result0_carry_n_1;
  wire Result0_carry_n_2;
  wire Result0_carry_n_3;
  wire \Result0_inferred__0/i__carry__0_n_0 ;
  wire \Result0_inferred__0/i__carry__0_n_1 ;
  wire \Result0_inferred__0/i__carry__0_n_2 ;
  wire \Result0_inferred__0/i__carry__0_n_3 ;
  wire \Result0_inferred__0/i__carry__1_n_0 ;
  wire \Result0_inferred__0/i__carry__1_n_1 ;
  wire \Result0_inferred__0/i__carry__1_n_2 ;
  wire \Result0_inferred__0/i__carry__1_n_3 ;
  wire \Result0_inferred__0/i__carry__2_n_0 ;
  wire \Result0_inferred__0/i__carry__2_n_1 ;
  wire \Result0_inferred__0/i__carry__2_n_2 ;
  wire \Result0_inferred__0/i__carry__2_n_3 ;
  wire \Result0_inferred__0/i__carry__3_n_0 ;
  wire \Result0_inferred__0/i__carry__3_n_1 ;
  wire \Result0_inferred__0/i__carry__3_n_2 ;
  wire \Result0_inferred__0/i__carry__3_n_3 ;
  wire \Result0_inferred__0/i__carry__4_n_0 ;
  wire \Result0_inferred__0/i__carry__4_n_1 ;
  wire \Result0_inferred__0/i__carry__4_n_2 ;
  wire \Result0_inferred__0/i__carry__4_n_3 ;
  wire \Result0_inferred__0/i__carry__5_n_0 ;
  wire \Result0_inferred__0/i__carry__5_n_1 ;
  wire \Result0_inferred__0/i__carry__5_n_2 ;
  wire \Result0_inferred__0/i__carry__5_n_3 ;
  wire \Result0_inferred__0/i__carry__6_n_1 ;
  wire \Result0_inferred__0/i__carry__6_n_2 ;
  wire \Result0_inferred__0/i__carry__6_n_3 ;
  wire \Result0_inferred__0/i__carry_n_0 ;
  wire \Result0_inferred__0/i__carry_n_1 ;
  wire \Result0_inferred__0/i__carry_n_2 ;
  wire \Result0_inferred__0/i__carry_n_3 ;
  wire \Result[0]_INST_0_i_1_n_0 ;
  wire \Result[0]_INST_0_i_2_n_0 ;
  wire \Result[0]_INST_0_i_3_n_0 ;
  wire \Result[0]_INST_0_i_4_n_0 ;
  wire \Result[0]_INST_0_i_5_n_0 ;
  wire \Result[10]_INST_0_i_1_n_0 ;
  wire \Result[10]_INST_0_i_2_n_0 ;
  wire \Result[10]_INST_0_i_3_n_0 ;
  wire \Result[10]_INST_0_i_4_n_0 ;
  wire \Result[10]_INST_0_i_5_n_0 ;
  wire \Result[10]_INST_0_i_6_n_0 ;
  wire \Result[11]_INST_0_i_1_n_0 ;
  wire \Result[11]_INST_0_i_2_n_0 ;
  wire \Result[11]_INST_0_i_3_n_0 ;
  wire \Result[11]_INST_0_i_4_n_0 ;
  wire \Result[11]_INST_0_i_5_n_0 ;
  wire \Result[11]_INST_0_i_6_n_0 ;
  wire \Result[12]_INST_0_i_1_n_0 ;
  wire \Result[12]_INST_0_i_2_n_0 ;
  wire \Result[12]_INST_0_i_3_n_0 ;
  wire \Result[12]_INST_0_i_4_n_0 ;
  wire \Result[12]_INST_0_i_5_n_0 ;
  wire \Result[12]_INST_0_i_6_n_0 ;
  wire \Result[13]_INST_0_i_1_n_0 ;
  wire \Result[13]_INST_0_i_2_n_0 ;
  wire \Result[13]_INST_0_i_3_n_0 ;
  wire \Result[13]_INST_0_i_4_n_0 ;
  wire \Result[13]_INST_0_i_5_n_0 ;
  wire \Result[13]_INST_0_i_6_n_0 ;
  wire \Result[13]_INST_0_i_7_n_0 ;
  wire \Result[14]_INST_0_i_1_n_0 ;
  wire \Result[14]_INST_0_i_2_n_0 ;
  wire \Result[14]_INST_0_i_3_n_0 ;
  wire \Result[14]_INST_0_i_4_n_0 ;
  wire \Result[14]_INST_0_i_5_n_0 ;
  wire \Result[14]_INST_0_i_6_n_0 ;
  wire \Result[14]_INST_0_i_7_n_0 ;
  wire \Result[15]_INST_0_i_1_n_0 ;
  wire \Result[15]_INST_0_i_2_n_0 ;
  wire \Result[15]_INST_0_i_3_n_0 ;
  wire \Result[15]_INST_0_i_4_n_0 ;
  wire \Result[15]_INST_0_i_5_n_0 ;
  wire \Result[15]_INST_0_i_6_n_0 ;
  wire \Result[15]_INST_0_i_7_n_0 ;
  wire \Result[16]_INST_0_i_1_n_0 ;
  wire \Result[16]_INST_0_i_2_n_0 ;
  wire \Result[16]_INST_0_i_3_n_0 ;
  wire \Result[16]_INST_0_i_4_n_0 ;
  wire \Result[16]_INST_0_i_5_n_0 ;
  wire \Result[16]_INST_0_i_6_n_0 ;
  wire \Result[16]_INST_0_i_7_n_0 ;
  wire \Result[16]_INST_0_i_8_n_0 ;
  wire \Result[17]_INST_0_i_1_n_0 ;
  wire \Result[17]_INST_0_i_2_n_0 ;
  wire \Result[17]_INST_0_i_3_n_0 ;
  wire \Result[17]_INST_0_i_4_n_0 ;
  wire \Result[17]_INST_0_i_5_n_0 ;
  wire \Result[17]_INST_0_i_6_n_0 ;
  wire \Result[17]_INST_0_i_7_n_0 ;
  wire \Result[17]_INST_0_i_8_n_0 ;
  wire \Result[18]_INST_0_i_1_n_0 ;
  wire \Result[18]_INST_0_i_2_n_0 ;
  wire \Result[18]_INST_0_i_3_n_0 ;
  wire \Result[18]_INST_0_i_4_n_0 ;
  wire \Result[18]_INST_0_i_5_n_0 ;
  wire \Result[18]_INST_0_i_6_n_0 ;
  wire \Result[18]_INST_0_i_7_n_0 ;
  wire \Result[18]_INST_0_i_8_n_0 ;
  wire \Result[19]_INST_0_i_1_n_0 ;
  wire \Result[19]_INST_0_i_2_n_0 ;
  wire \Result[19]_INST_0_i_3_n_0 ;
  wire \Result[19]_INST_0_i_4_n_0 ;
  wire \Result[19]_INST_0_i_5_n_0 ;
  wire \Result[19]_INST_0_i_6_n_0 ;
  wire \Result[19]_INST_0_i_7_n_0 ;
  wire \Result[19]_INST_0_i_8_n_0 ;
  wire \Result[1]_INST_0_i_1_n_0 ;
  wire \Result[1]_INST_0_i_2_n_0 ;
  wire \Result[1]_INST_0_i_3_n_0 ;
  wire \Result[1]_INST_0_i_4_n_0 ;
  wire \Result[1]_INST_0_i_5_n_0 ;
  wire \Result[1]_INST_0_i_6_n_0 ;
  wire \Result[20]_INST_0_i_1_n_0 ;
  wire \Result[20]_INST_0_i_2_n_0 ;
  wire \Result[20]_INST_0_i_3_n_0 ;
  wire \Result[20]_INST_0_i_4_n_0 ;
  wire \Result[20]_INST_0_i_5_n_0 ;
  wire \Result[20]_INST_0_i_6_n_0 ;
  wire \Result[20]_INST_0_i_7_n_0 ;
  wire \Result[21]_INST_0_i_1_n_0 ;
  wire \Result[21]_INST_0_i_2_n_0 ;
  wire \Result[21]_INST_0_i_3_n_0 ;
  wire \Result[21]_INST_0_i_4_n_0 ;
  wire \Result[21]_INST_0_i_5_n_0 ;
  wire \Result[21]_INST_0_i_6_n_0 ;
  wire \Result[21]_INST_0_i_7_n_0 ;
  wire \Result[22]_INST_0_i_1_n_0 ;
  wire \Result[22]_INST_0_i_2_n_0 ;
  wire \Result[22]_INST_0_i_3_n_0 ;
  wire \Result[22]_INST_0_i_4_n_0 ;
  wire \Result[22]_INST_0_i_5_n_0 ;
  wire \Result[22]_INST_0_i_6_n_0 ;
  wire \Result[22]_INST_0_i_7_n_0 ;
  wire \Result[23]_INST_0_i_1_n_0 ;
  wire \Result[23]_INST_0_i_2_n_0 ;
  wire \Result[23]_INST_0_i_3_n_0 ;
  wire \Result[23]_INST_0_i_4_n_0 ;
  wire \Result[23]_INST_0_i_5_n_0 ;
  wire \Result[23]_INST_0_i_6_n_0 ;
  wire \Result[23]_INST_0_i_7_n_0 ;
  wire \Result[24]_INST_0_i_1_n_0 ;
  wire \Result[24]_INST_0_i_2_n_0 ;
  wire \Result[24]_INST_0_i_3_n_0 ;
  wire \Result[24]_INST_0_i_4_n_0 ;
  wire \Result[24]_INST_0_i_5_n_0 ;
  wire \Result[24]_INST_0_i_6_n_0 ;
  wire \Result[24]_INST_0_i_7_n_0 ;
  wire \Result[25]_INST_0_i_1_n_0 ;
  wire \Result[25]_INST_0_i_2_n_0 ;
  wire \Result[25]_INST_0_i_3_n_0 ;
  wire \Result[25]_INST_0_i_4_n_0 ;
  wire \Result[25]_INST_0_i_5_n_0 ;
  wire \Result[25]_INST_0_i_6_n_0 ;
  wire \Result[25]_INST_0_i_7_n_0 ;
  wire \Result[26]_INST_0_i_1_n_0 ;
  wire \Result[26]_INST_0_i_2_n_0 ;
  wire \Result[26]_INST_0_i_3_n_0 ;
  wire \Result[26]_INST_0_i_4_n_0 ;
  wire \Result[26]_INST_0_i_5_n_0 ;
  wire \Result[26]_INST_0_i_6_n_0 ;
  wire \Result[26]_INST_0_i_7_n_0 ;
  wire \Result[27]_INST_0_i_1_n_0 ;
  wire \Result[27]_INST_0_i_2_n_0 ;
  wire \Result[27]_INST_0_i_3_n_0 ;
  wire \Result[27]_INST_0_i_4_n_0 ;
  wire \Result[27]_INST_0_i_5_n_0 ;
  wire \Result[27]_INST_0_i_6_n_0 ;
  wire \Result[27]_INST_0_i_7_n_0 ;
  wire \Result[28]_INST_0_i_1_n_0 ;
  wire \Result[28]_INST_0_i_2_n_0 ;
  wire \Result[28]_INST_0_i_3_n_0 ;
  wire \Result[28]_INST_0_i_4_n_0 ;
  wire \Result[28]_INST_0_i_5_n_0 ;
  wire \Result[28]_INST_0_i_6_n_0 ;
  wire \Result[29]_INST_0_i_10_n_0 ;
  wire \Result[29]_INST_0_i_11_n_0 ;
  wire \Result[29]_INST_0_i_12_n_0 ;
  wire \Result[29]_INST_0_i_13_n_0 ;
  wire \Result[29]_INST_0_i_14_n_0 ;
  wire \Result[29]_INST_0_i_15_n_0 ;
  wire \Result[29]_INST_0_i_1_n_0 ;
  wire \Result[29]_INST_0_i_2_n_0 ;
  wire \Result[29]_INST_0_i_3_n_0 ;
  wire \Result[29]_INST_0_i_4_n_0 ;
  wire \Result[29]_INST_0_i_5_n_0 ;
  wire \Result[29]_INST_0_i_6_n_0 ;
  wire \Result[29]_INST_0_i_7_n_0 ;
  wire \Result[29]_INST_0_i_8_n_0 ;
  wire \Result[29]_INST_0_i_9_n_0 ;
  wire \Result[2]_INST_0_i_1_n_0 ;
  wire \Result[2]_INST_0_i_2_n_0 ;
  wire \Result[2]_INST_0_i_3_n_0 ;
  wire \Result[2]_INST_0_i_4_n_0 ;
  wire \Result[2]_INST_0_i_5_n_0 ;
  wire \Result[2]_INST_0_i_6_n_0 ;
  wire \Result[30]_INST_0_i_1_n_0 ;
  wire \Result[30]_INST_0_i_2_n_0 ;
  wire \Result[30]_INST_0_i_3_n_0 ;
  wire \Result[31]_INST_0_i_1_n_0 ;
  wire \Result[31]_INST_0_i_2_n_0 ;
  wire \Result[31]_INST_0_i_3_n_0 ;
  wire \Result[31]_INST_0_i_4_n_0 ;
  wire \Result[31]_INST_0_i_5_n_0 ;
  wire \Result[31]_INST_0_i_6_n_0 ;
  wire \Result[31]_INST_0_i_7_n_0 ;
  wire \Result[31]_INST_0_i_8_n_0 ;
  wire \Result[3]_INST_0_i_1_n_0 ;
  wire \Result[3]_INST_0_i_2_n_0 ;
  wire \Result[3]_INST_0_i_3_n_0 ;
  wire \Result[3]_INST_0_i_4_n_0 ;
  wire \Result[3]_INST_0_i_5_n_0 ;
  wire \Result[3]_INST_0_i_6_n_0 ;
  wire \Result[4]_INST_0_i_1_n_0 ;
  wire \Result[4]_INST_0_i_2_n_0 ;
  wire \Result[4]_INST_0_i_3_n_0 ;
  wire \Result[4]_INST_0_i_4_n_0 ;
  wire \Result[4]_INST_0_i_5_n_0 ;
  wire \Result[4]_INST_0_i_6_n_0 ;
  wire \Result[5]_INST_0_i_10_n_0 ;
  wire \Result[5]_INST_0_i_11_n_0 ;
  wire \Result[5]_INST_0_i_12_n_0 ;
  wire \Result[5]_INST_0_i_13_n_0 ;
  wire \Result[5]_INST_0_i_14_n_0 ;
  wire \Result[5]_INST_0_i_15_n_0 ;
  wire \Result[5]_INST_0_i_16_n_0 ;
  wire \Result[5]_INST_0_i_17_n_0 ;
  wire \Result[5]_INST_0_i_1_n_0 ;
  wire \Result[5]_INST_0_i_2_n_0 ;
  wire \Result[5]_INST_0_i_3_n_0 ;
  wire \Result[5]_INST_0_i_4_n_0 ;
  wire \Result[5]_INST_0_i_5_n_0 ;
  wire \Result[5]_INST_0_i_6_n_0 ;
  wire \Result[5]_INST_0_i_7_n_0 ;
  wire \Result[5]_INST_0_i_8_n_0 ;
  wire \Result[5]_INST_0_i_9_n_0 ;
  wire \Result[6]_INST_0_i_1_n_0 ;
  wire \Result[6]_INST_0_i_2_n_0 ;
  wire \Result[6]_INST_0_i_3_n_0 ;
  wire \Result[7]_INST_0_i_1_n_0 ;
  wire \Result[7]_INST_0_i_2_n_0 ;
  wire \Result[7]_INST_0_i_3_n_0 ;
  wire \Result[7]_INST_0_i_4_n_0 ;
  wire \Result[7]_INST_0_i_5_n_0 ;
  wire \Result[8]_INST_0_i_1_n_0 ;
  wire \Result[8]_INST_0_i_2_n_0 ;
  wire \Result[8]_INST_0_i_3_n_0 ;
  wire \Result[8]_INST_0_i_4_n_0 ;
  wire \Result[8]_INST_0_i_5_n_0 ;
  wire \Result[9]_INST_0_i_1_n_0 ;
  wire \Result[9]_INST_0_i_2_n_0 ;
  wire \Result[9]_INST_0_i_3_n_0 ;
  wire \Result[9]_INST_0_i_4_n_0 ;
  wire \Result[9]_INST_0_i_5_n_0 ;
  wire \Result[9]_INST_0_i_6_n_0 ;
  wire Zero;
  wire Zero_INST_0_i_10_n_0;
  wire Zero_INST_0_i_11_n_0;
  wire Zero_INST_0_i_12_n_0;
  wire Zero_INST_0_i_13_n_0;
  wire Zero_INST_0_i_14_n_0;
  wire Zero_INST_0_i_15_n_0;
  wire Zero_INST_0_i_16_n_0;
  wire Zero_INST_0_i_17_n_0;
  wire Zero_INST_0_i_18_n_0;
  wire Zero_INST_0_i_19_n_0;
  wire Zero_INST_0_i_1_n_0;
  wire Zero_INST_0_i_20_n_0;
  wire Zero_INST_0_i_21_n_0;
  wire Zero_INST_0_i_22_n_0;
  wire Zero_INST_0_i_23_n_0;
  wire Zero_INST_0_i_24_n_0;
  wire Zero_INST_0_i_25_n_0;
  wire Zero_INST_0_i_26_n_0;
  wire Zero_INST_0_i_2_n_0;
  wire Zero_INST_0_i_3_n_0;
  wire Zero_INST_0_i_4_n_0;
  wire Zero_INST_0_i_5_n_0;
  wire Zero_INST_0_i_6_n_0;
  wire Zero_INST_0_i_7_n_0;
  wire Zero_INST_0_i_8_n_0;
  wire Zero_INST_0_i_9_n_0;
  wire [31:0]data0;
  wire [31:0]data1;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [3:0]NLW_LessSigned_carry_O_UNCONNECTED;
  wire [3:0]NLW_LessSigned_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LessSigned_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_LessSigned_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_LessUnsigned_carry_O_UNCONNECTED;
  wire [3:0]NLW_LessUnsigned_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LessUnsigned_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_LessUnsigned_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_Result0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessSigned_carry
       (.CI(1'b0),
        .CO({LessSigned_carry_n_0,LessSigned_carry_n_1,LessSigned_carry_n_2,LessSigned_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LessSigned_carry_i_1_n_0,LessSigned_carry_i_2_n_0,LessSigned_carry_i_3_n_0,LessSigned_carry_i_4_n_0}),
        .O(NLW_LessSigned_carry_O_UNCONNECTED[3:0]),
        .S({LessSigned_carry_i_5_n_0,LessSigned_carry_i_6_n_0,LessSigned_carry_i_7_n_0,LessSigned_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessSigned_carry__0
       (.CI(LessSigned_carry_n_0),
        .CO({LessSigned_carry__0_n_0,LessSigned_carry__0_n_1,LessSigned_carry__0_n_2,LessSigned_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LessSigned_carry__0_i_1_n_0,LessSigned_carry__0_i_2_n_0,LessSigned_carry__0_i_3_n_0,LessSigned_carry__0_i_4_n_0}),
        .O(NLW_LessSigned_carry__0_O_UNCONNECTED[3:0]),
        .S({LessSigned_carry__0_i_5_n_0,LessSigned_carry__0_i_6_n_0,LessSigned_carry__0_i_7_n_0,LessSigned_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__0_i_1
       (.I0(B[14]),
        .I1(A[14]),
        .I2(A[15]),
        .I3(B[15]),
        .O(LessSigned_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__0_i_2
       (.I0(B[12]),
        .I1(A[12]),
        .I2(A[13]),
        .I3(B[13]),
        .O(LessSigned_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__0_i_3
       (.I0(B[10]),
        .I1(A[10]),
        .I2(A[11]),
        .I3(B[11]),
        .O(LessSigned_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__0_i_4
       (.I0(B[8]),
        .I1(A[8]),
        .I2(A[9]),
        .I3(B[9]),
        .O(LessSigned_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__0_i_5
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(LessSigned_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__0_i_6
       (.I0(B[12]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(LessSigned_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__0_i_7
       (.I0(B[10]),
        .I1(A[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(LessSigned_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__0_i_8
       (.I0(B[8]),
        .I1(A[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(LessSigned_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessSigned_carry__1
       (.CI(LessSigned_carry__0_n_0),
        .CO({LessSigned_carry__1_n_0,LessSigned_carry__1_n_1,LessSigned_carry__1_n_2,LessSigned_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({LessSigned_carry__1_i_1_n_0,LessSigned_carry__1_i_2_n_0,LessSigned_carry__1_i_3_n_0,LessSigned_carry__1_i_4_n_0}),
        .O(NLW_LessSigned_carry__1_O_UNCONNECTED[3:0]),
        .S({LessSigned_carry__1_i_5_n_0,LessSigned_carry__1_i_6_n_0,LessSigned_carry__1_i_7_n_0,LessSigned_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__1_i_1
       (.I0(B[22]),
        .I1(A[22]),
        .I2(A[23]),
        .I3(B[23]),
        .O(LessSigned_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__1_i_2
       (.I0(B[20]),
        .I1(A[20]),
        .I2(A[21]),
        .I3(B[21]),
        .O(LessSigned_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__1_i_3
       (.I0(B[18]),
        .I1(A[18]),
        .I2(A[19]),
        .I3(B[19]),
        .O(LessSigned_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__1_i_4
       (.I0(B[16]),
        .I1(A[16]),
        .I2(A[17]),
        .I3(B[17]),
        .O(LessSigned_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__1_i_5
       (.I0(B[22]),
        .I1(A[22]),
        .I2(B[23]),
        .I3(A[23]),
        .O(LessSigned_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__1_i_6
       (.I0(B[20]),
        .I1(A[20]),
        .I2(B[21]),
        .I3(A[21]),
        .O(LessSigned_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__1_i_7
       (.I0(B[18]),
        .I1(A[18]),
        .I2(B[19]),
        .I3(A[19]),
        .O(LessSigned_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__1_i_8
       (.I0(B[16]),
        .I1(A[16]),
        .I2(B[17]),
        .I3(A[17]),
        .O(LessSigned_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessSigned_carry__2
       (.CI(LessSigned_carry__1_n_0),
        .CO({LessSigned,LessSigned_carry__2_n_1,LessSigned_carry__2_n_2,LessSigned_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({LessSigned_carry__2_i_1_n_0,LessSigned_carry__2_i_2_n_0,LessSigned_carry__2_i_3_n_0,LessSigned_carry__2_i_4_n_0}),
        .O(NLW_LessSigned_carry__2_O_UNCONNECTED[3:0]),
        .S({LessSigned_carry__2_i_5_n_0,LessSigned_carry__2_i_6_n_0,LessSigned_carry__2_i_7_n_0,LessSigned_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__2_i_1
       (.I0(B[30]),
        .I1(A[30]),
        .I2(B[31]),
        .I3(A[31]),
        .O(LessSigned_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__2_i_2
       (.I0(B[28]),
        .I1(A[28]),
        .I2(A[29]),
        .I3(B[29]),
        .O(LessSigned_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__2_i_3
       (.I0(B[26]),
        .I1(A[26]),
        .I2(A[27]),
        .I3(B[27]),
        .O(LessSigned_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry__2_i_4
       (.I0(B[24]),
        .I1(A[24]),
        .I2(A[25]),
        .I3(B[25]),
        .O(LessSigned_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__2_i_5
       (.I0(B[30]),
        .I1(A[30]),
        .I2(B[31]),
        .I3(A[31]),
        .O(LessSigned_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__2_i_6
       (.I0(B[28]),
        .I1(A[28]),
        .I2(B[29]),
        .I3(A[29]),
        .O(LessSigned_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__2_i_7
       (.I0(B[26]),
        .I1(A[26]),
        .I2(B[27]),
        .I3(A[27]),
        .O(LessSigned_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry__2_i_8
       (.I0(B[24]),
        .I1(A[24]),
        .I2(B[25]),
        .I3(A[25]),
        .O(LessSigned_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry_i_1
       (.I0(B[6]),
        .I1(A[6]),
        .I2(A[7]),
        .I3(B[7]),
        .O(LessSigned_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry_i_2
       (.I0(B[4]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(B[5]),
        .O(LessSigned_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry_i_3
       (.I0(B[2]),
        .I1(A[2]),
        .I2(A[3]),
        .I3(B[3]),
        .O(LessSigned_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessSigned_carry_i_4
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(LessSigned_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry_i_5
       (.I0(B[6]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(LessSigned_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry_i_6
       (.I0(B[4]),
        .I1(A[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(LessSigned_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry_i_7
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(LessSigned_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessSigned_carry_i_8
       (.I0(B[0]),
        .I1(A[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(LessSigned_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessUnsigned_carry
       (.CI(1'b0),
        .CO({LessUnsigned_carry_n_0,LessUnsigned_carry_n_1,LessUnsigned_carry_n_2,LessUnsigned_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LessUnsigned_carry_i_1_n_0,LessUnsigned_carry_i_2_n_0,LessUnsigned_carry_i_3_n_0,LessUnsigned_carry_i_4_n_0}),
        .O(NLW_LessUnsigned_carry_O_UNCONNECTED[3:0]),
        .S({LessUnsigned_carry_i_5_n_0,LessUnsigned_carry_i_6_n_0,LessUnsigned_carry_i_7_n_0,LessUnsigned_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessUnsigned_carry__0
       (.CI(LessUnsigned_carry_n_0),
        .CO({LessUnsigned_carry__0_n_0,LessUnsigned_carry__0_n_1,LessUnsigned_carry__0_n_2,LessUnsigned_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LessUnsigned_carry_i_1__0_n_0,LessUnsigned_carry_i_2__0_n_0,LessUnsigned_carry_i_3__0_n_0,LessUnsigned_carry_i_4__0_n_0}),
        .O(NLW_LessUnsigned_carry__0_O_UNCONNECTED[3:0]),
        .S({LessUnsigned_carry_i_5__0_n_0,LessUnsigned_carry_i_6__0_n_0,LessUnsigned_carry_i_7__0_n_0,LessUnsigned_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessUnsigned_carry__1
       (.CI(LessUnsigned_carry__0_n_0),
        .CO({LessUnsigned_carry__1_n_0,LessUnsigned_carry__1_n_1,LessUnsigned_carry__1_n_2,LessUnsigned_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({LessUnsigned_carry_i_1__1_n_0,LessUnsigned_carry_i_2__1_n_0,LessUnsigned_carry_i_3__1_n_0,LessUnsigned_carry_i_4__1_n_0}),
        .O(NLW_LessUnsigned_carry__1_O_UNCONNECTED[3:0]),
        .S({LessUnsigned_carry_i_5__1_n_0,LessUnsigned_carry_i_6__1_n_0,LessUnsigned_carry_i_7__1_n_0,LessUnsigned_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 LessUnsigned_carry__2
       (.CI(LessUnsigned_carry__1_n_0),
        .CO({LessUnsigned,LessUnsigned_carry__2_n_1,LessUnsigned_carry__2_n_2,LessUnsigned_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({LessUnsigned_carry_i_1__2_n_0,LessUnsigned_carry_i_2__2_n_0,LessUnsigned_carry_i_3__2_n_0,LessUnsigned_carry_i_4__2_n_0}),
        .O(NLW_LessUnsigned_carry__2_O_UNCONNECTED[3:0]),
        .S({LessUnsigned_carry_i_5__2_n_0,LessUnsigned_carry_i_6__2_n_0,LessUnsigned_carry_i_7__2_n_0,LessUnsigned_carry_i_8__2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_1
       (.I0(B[6]),
        .I1(A[6]),
        .I2(A[7]),
        .I3(B[7]),
        .O(LessUnsigned_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_1__0
       (.I0(B[14]),
        .I1(A[14]),
        .I2(A[15]),
        .I3(B[15]),
        .O(LessUnsigned_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_1__1
       (.I0(B[22]),
        .I1(A[22]),
        .I2(A[23]),
        .I3(B[23]),
        .O(LessUnsigned_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_1__2
       (.I0(B[30]),
        .I1(A[30]),
        .I2(A[31]),
        .I3(B[31]),
        .O(LessUnsigned_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_2
       (.I0(B[4]),
        .I1(A[4]),
        .I2(A[5]),
        .I3(B[5]),
        .O(LessUnsigned_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_2__0
       (.I0(B[12]),
        .I1(A[12]),
        .I2(A[13]),
        .I3(B[13]),
        .O(LessUnsigned_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_2__1
       (.I0(B[20]),
        .I1(A[20]),
        .I2(A[21]),
        .I3(B[21]),
        .O(LessUnsigned_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_2__2
       (.I0(B[28]),
        .I1(A[28]),
        .I2(A[29]),
        .I3(B[29]),
        .O(LessUnsigned_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_3
       (.I0(B[2]),
        .I1(A[2]),
        .I2(A[3]),
        .I3(B[3]),
        .O(LessUnsigned_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_3__0
       (.I0(B[10]),
        .I1(A[10]),
        .I2(A[11]),
        .I3(B[11]),
        .O(LessUnsigned_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_3__1
       (.I0(B[18]),
        .I1(A[18]),
        .I2(A[19]),
        .I3(B[19]),
        .O(LessUnsigned_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_3__2
       (.I0(B[26]),
        .I1(A[26]),
        .I2(A[27]),
        .I3(B[27]),
        .O(LessUnsigned_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_4
       (.I0(B[0]),
        .I1(A[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(LessUnsigned_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_4__0
       (.I0(B[8]),
        .I1(A[8]),
        .I2(A[9]),
        .I3(B[9]),
        .O(LessUnsigned_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_4__1
       (.I0(B[16]),
        .I1(A[16]),
        .I2(A[17]),
        .I3(B[17]),
        .O(LessUnsigned_carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    LessUnsigned_carry_i_4__2
       (.I0(B[24]),
        .I1(A[24]),
        .I2(A[25]),
        .I3(B[25]),
        .O(LessUnsigned_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_5
       (.I0(B[6]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(LessUnsigned_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_5__0
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(LessUnsigned_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_5__1
       (.I0(B[22]),
        .I1(A[22]),
        .I2(B[23]),
        .I3(A[23]),
        .O(LessUnsigned_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_5__2
       (.I0(B[30]),
        .I1(A[30]),
        .I2(B[31]),
        .I3(A[31]),
        .O(LessUnsigned_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_6
       (.I0(B[4]),
        .I1(A[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(LessUnsigned_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_6__0
       (.I0(B[12]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(LessUnsigned_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_6__1
       (.I0(B[20]),
        .I1(A[20]),
        .I2(B[21]),
        .I3(A[21]),
        .O(LessUnsigned_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_6__2
       (.I0(B[28]),
        .I1(A[28]),
        .I2(B[29]),
        .I3(A[29]),
        .O(LessUnsigned_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_7
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(LessUnsigned_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_7__0
       (.I0(B[10]),
        .I1(A[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(LessUnsigned_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_7__1
       (.I0(B[18]),
        .I1(A[18]),
        .I2(B[19]),
        .I3(A[19]),
        .O(LessUnsigned_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_7__2
       (.I0(B[26]),
        .I1(A[26]),
        .I2(B[27]),
        .I3(A[27]),
        .O(LessUnsigned_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_8
       (.I0(B[0]),
        .I1(A[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(LessUnsigned_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_8__0
       (.I0(B[8]),
        .I1(A[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(LessUnsigned_carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_8__1
       (.I0(B[16]),
        .I1(A[16]),
        .I2(B[17]),
        .I3(A[17]),
        .O(LessUnsigned_carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    LessUnsigned_carry_i_8__2
       (.I0(B[24]),
        .I1(A[24]),
        .I2(B[25]),
        .I3(A[25]),
        .O(LessUnsigned_carry_i_8__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry
       (.CI(1'b0),
        .CO({Result0_carry_n_0,Result0_carry_n_1,Result0_carry_n_2,Result0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O(data0[3:0]),
        .S({Result0_carry_i_1_n_0,Result0_carry_i_2_n_0,Result0_carry_i_3_n_0,Result0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__0
       (.CI(Result0_carry_n_0),
        .CO({Result0_carry__0_n_0,Result0_carry__0_n_1,Result0_carry__0_n_2,Result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(data0[7:4]),
        .S({Result0_carry__0_i_1_n_0,Result0_carry__0_i_2_n_0,Result0_carry__0_i_3_n_0,Result0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_1
       (.I0(A[7]),
        .I1(B[7]),
        .O(Result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_2
       (.I0(A[6]),
        .I1(B[6]),
        .O(Result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_3
       (.I0(A[5]),
        .I1(B[5]),
        .O(Result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__0_i_4
       (.I0(A[4]),
        .I1(B[4]),
        .O(Result0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__1
       (.CI(Result0_carry__0_n_0),
        .CO({Result0_carry__1_n_0,Result0_carry__1_n_1,Result0_carry__1_n_2,Result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(data0[11:8]),
        .S({Result0_carry__1_i_1_n_0,Result0_carry__1_i_2_n_0,Result0_carry__1_i_3_n_0,Result0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_1
       (.I0(A[11]),
        .I1(B[11]),
        .O(Result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_2
       (.I0(A[10]),
        .I1(B[10]),
        .O(Result0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_3
       (.I0(A[9]),
        .I1(B[9]),
        .O(Result0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__1_i_4
       (.I0(A[8]),
        .I1(B[8]),
        .O(Result0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__2
       (.CI(Result0_carry__1_n_0),
        .CO({Result0_carry__2_n_0,Result0_carry__2_n_1,Result0_carry__2_n_2,Result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(data0[15:12]),
        .S({Result0_carry__2_i_1_n_0,Result0_carry__2_i_2_n_0,Result0_carry__2_i_3_n_0,Result0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .O(Result0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_2
       (.I0(A[14]),
        .I1(B[14]),
        .O(Result0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_3
       (.I0(A[13]),
        .I1(B[13]),
        .O(Result0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__2_i_4
       (.I0(A[12]),
        .I1(B[12]),
        .O(Result0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__3
       (.CI(Result0_carry__2_n_0),
        .CO({Result0_carry__3_n_0,Result0_carry__3_n_1,Result0_carry__3_n_2,Result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(data0[19:16]),
        .S({Result0_carry__3_i_1_n_0,Result0_carry__3_i_2_n_0,Result0_carry__3_i_3_n_0,Result0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_1
       (.I0(A[19]),
        .I1(B[19]),
        .O(Result0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_2
       (.I0(A[18]),
        .I1(B[18]),
        .O(Result0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_3
       (.I0(A[17]),
        .I1(B[17]),
        .O(Result0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__3_i_4
       (.I0(A[16]),
        .I1(B[16]),
        .O(Result0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__4
       (.CI(Result0_carry__3_n_0),
        .CO({Result0_carry__4_n_0,Result0_carry__4_n_1,Result0_carry__4_n_2,Result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(data0[23:20]),
        .S({Result0_carry__4_i_1_n_0,Result0_carry__4_i_2_n_0,Result0_carry__4_i_3_n_0,Result0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_1
       (.I0(A[23]),
        .I1(B[23]),
        .O(Result0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_2
       (.I0(A[22]),
        .I1(B[22]),
        .O(Result0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_3
       (.I0(A[21]),
        .I1(B[21]),
        .O(Result0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__4_i_4
       (.I0(A[20]),
        .I1(B[20]),
        .O(Result0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__5
       (.CI(Result0_carry__4_n_0),
        .CO({Result0_carry__5_n_0,Result0_carry__5_n_1,Result0_carry__5_n_2,Result0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(data0[27:24]),
        .S({Result0_carry__5_i_1_n_0,Result0_carry__5_i_2_n_0,Result0_carry__5_i_3_n_0,Result0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_1
       (.I0(A[27]),
        .I1(B[27]),
        .O(Result0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_2
       (.I0(A[26]),
        .I1(B[26]),
        .O(Result0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_3
       (.I0(A[25]),
        .I1(B[25]),
        .O(Result0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__5_i_4
       (.I0(A[24]),
        .I1(B[24]),
        .O(Result0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Result0_carry__6
       (.CI(Result0_carry__5_n_0),
        .CO({NLW_Result0_carry__6_CO_UNCONNECTED[3],Result0_carry__6_n_1,Result0_carry__6_n_2,Result0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A[30:28]}),
        .O(data0[31:28]),
        .S({Result0_carry__6_i_1_n_0,Result0_carry__6_i_2_n_0,Result0_carry__6_i_3_n_0,Result0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_1
       (.I0(A[31]),
        .I1(B[31]),
        .O(Result0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_2
       (.I0(A[30]),
        .I1(B[30]),
        .O(Result0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_3
       (.I0(A[29]),
        .I1(B[29]),
        .O(Result0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry__6_i_4
       (.I0(A[28]),
        .I1(B[28]),
        .O(Result0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_1
       (.I0(A[3]),
        .I1(B[3]),
        .O(Result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_2
       (.I0(A[2]),
        .I1(B[2]),
        .O(Result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_3
       (.I0(A[1]),
        .I1(B[1]),
        .O(Result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Result0_carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .O(Result0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\Result0_inferred__0/i__carry_n_0 ,\Result0_inferred__0/i__carry_n_1 ,\Result0_inferred__0/i__carry_n_2 ,\Result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(A[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__0 
       (.CI(\Result0_inferred__0/i__carry_n_0 ),
        .CO({\Result0_inferred__0/i__carry__0_n_0 ,\Result0_inferred__0/i__carry__0_n_1 ,\Result0_inferred__0/i__carry__0_n_2 ,\Result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__1 
       (.CI(\Result0_inferred__0/i__carry__0_n_0 ),
        .CO({\Result0_inferred__0/i__carry__1_n_0 ,\Result0_inferred__0/i__carry__1_n_1 ,\Result0_inferred__0/i__carry__1_n_2 ,\Result0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__2 
       (.CI(\Result0_inferred__0/i__carry__1_n_0 ),
        .CO({\Result0_inferred__0/i__carry__2_n_0 ,\Result0_inferred__0/i__carry__2_n_1 ,\Result0_inferred__0/i__carry__2_n_2 ,\Result0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(data1[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__3 
       (.CI(\Result0_inferred__0/i__carry__2_n_0 ),
        .CO({\Result0_inferred__0/i__carry__3_n_0 ,\Result0_inferred__0/i__carry__3_n_1 ,\Result0_inferred__0/i__carry__3_n_2 ,\Result0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(data1[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__4 
       (.CI(\Result0_inferred__0/i__carry__3_n_0 ),
        .CO({\Result0_inferred__0/i__carry__4_n_0 ,\Result0_inferred__0/i__carry__4_n_1 ,\Result0_inferred__0/i__carry__4_n_2 ,\Result0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(data1[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__5 
       (.CI(\Result0_inferred__0/i__carry__4_n_0 ),
        .CO({\Result0_inferred__0/i__carry__5_n_0 ,\Result0_inferred__0/i__carry__5_n_1 ,\Result0_inferred__0/i__carry__5_n_2 ,\Result0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(data1[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Result0_inferred__0/i__carry__6 
       (.CI(\Result0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\Result0_inferred__0/i__carry__6_n_1 ,\Result0_inferred__0/i__carry__6_n_2 ,\Result0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A[30:28]}),
        .O(data1[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  MUXF7 \Result[0]_INST_0 
       (.I0(\Result[0]_INST_0_i_1_n_0 ),
        .I1(\Result[0]_INST_0_i_2_n_0 ),
        .O(Result[0]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[0]_INST_0_i_1 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(ALUControl[1]),
        .I3(data1[0]),
        .I4(ALUControl[0]),
        .I5(data0[0]),
        .O(\Result[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \Result[0]_INST_0_i_2 
       (.I0(\Result[0]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(LessSigned),
        .I3(ALUControl[0]),
        .I4(B[0]),
        .I5(A[0]),
        .O(\Result[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \Result[0]_INST_0_i_3 
       (.I0(\Result[1]_INST_0_i_4_n_0 ),
        .I1(\Result[0]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[1]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .O(\Result[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[0]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_11_n_0 ),
        .I1(\Result[2]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[4]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[0]_INST_0_i_5_n_0 ),
        .O(\Result[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[0]_INST_0_i_5 
       (.I0(A[24]),
        .I1(A[8]),
        .I2(B[3]),
        .I3(A[16]),
        .I4(B[4]),
        .I5(A[0]),
        .O(\Result[0]_INST_0_i_5_n_0 ));
  MUXF7 \Result[10]_INST_0 
       (.I0(\Result[10]_INST_0_i_1_n_0 ),
        .I1(\Result[10]_INST_0_i_2_n_0 ),
        .O(Result[10]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[10]_INST_0_i_1 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(ALUControl[1]),
        .I3(data1[10]),
        .I4(ALUControl[0]),
        .I5(data0[10]),
        .O(\Result[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[10]_INST_0_i_2 
       (.I0(\Result[10]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(ALUControl[0]),
        .O(\Result[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[10]_INST_0_i_3 
       (.I0(\Result[11]_INST_0_i_4_n_0 ),
        .I1(\Result[10]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[10]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[11]_INST_0_i_5_n_0 ),
        .O(\Result[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[10]_INST_0_i_4 
       (.I0(\Result[16]_INST_0_i_7_n_0 ),
        .I1(\Result[5]_INST_0_i_8_n_0 ),
        .I2(B[1]),
        .I3(\Result[14]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_10_n_0 ),
        .O(\Result[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[10]_INST_0_i_5 
       (.I0(\Result[10]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[12]_INST_0_i_6_n_0 ),
        .O(\Result[10]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[10]_INST_0_i_6 
       (.I0(A[3]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[7]),
        .I4(B[3]),
        .O(\Result[10]_INST_0_i_6_n_0 ));
  MUXF7 \Result[11]_INST_0 
       (.I0(\Result[11]_INST_0_i_1_n_0 ),
        .I1(\Result[11]_INST_0_i_2_n_0 ),
        .O(Result[11]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[11]_INST_0_i_1 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(ALUControl[1]),
        .I3(data1[11]),
        .I4(ALUControl[0]),
        .I5(data0[11]),
        .O(\Result[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[11]_INST_0_i_2 
       (.I0(\Result[11]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(ALUControl[0]),
        .O(\Result[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[11]_INST_0_i_3 
       (.I0(\Result[12]_INST_0_i_4_n_0 ),
        .I1(\Result[11]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[11]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[12]_INST_0_i_5_n_0 ),
        .O(\Result[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[11]_INST_0_i_4 
       (.I0(\Result[17]_INST_0_i_7_n_0 ),
        .I1(\Result[13]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[15]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_12_n_0 ),
        .O(\Result[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[11]_INST_0_i_5 
       (.I0(\Result[11]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[13]_INST_0_i_7_n_0 ),
        .O(\Result[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[11]_INST_0_i_6 
       (.I0(A[4]),
        .I1(B[2]),
        .I2(A[0]),
        .I3(B[3]),
        .I4(A[8]),
        .I5(B[4]),
        .O(\Result[11]_INST_0_i_6_n_0 ));
  MUXF7 \Result[12]_INST_0 
       (.I0(\Result[12]_INST_0_i_1_n_0 ),
        .I1(\Result[12]_INST_0_i_2_n_0 ),
        .O(Result[12]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[12]_INST_0_i_1 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(ALUControl[1]),
        .I3(data1[12]),
        .I4(ALUControl[0]),
        .I5(data0[12]),
        .O(\Result[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[12]_INST_0_i_2 
       (.I0(\Result[12]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[12]),
        .I3(B[12]),
        .I4(ALUControl[0]),
        .O(\Result[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[12]_INST_0_i_3 
       (.I0(\Result[13]_INST_0_i_4_n_0 ),
        .I1(\Result[12]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[12]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[13]_INST_0_i_5_n_0 ),
        .O(\Result[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[12]_INST_0_i_4 
       (.I0(\Result[18]_INST_0_i_7_n_0 ),
        .I1(\Result[14]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[16]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_8_n_0 ),
        .O(\Result[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[12]_INST_0_i_5 
       (.I0(\Result[12]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[14]_INST_0_i_7_n_0 ),
        .O(\Result[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[12]_INST_0_i_6 
       (.I0(A[5]),
        .I1(B[2]),
        .I2(A[1]),
        .I3(B[3]),
        .I4(A[9]),
        .I5(B[4]),
        .O(\Result[12]_INST_0_i_6_n_0 ));
  MUXF7 \Result[13]_INST_0 
       (.I0(\Result[13]_INST_0_i_1_n_0 ),
        .I1(\Result[13]_INST_0_i_2_n_0 ),
        .O(Result[13]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[13]_INST_0_i_1 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(ALUControl[1]),
        .I3(data1[13]),
        .I4(ALUControl[0]),
        .I5(data0[13]),
        .O(\Result[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[13]_INST_0_i_2 
       (.I0(\Result[13]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[13]),
        .I3(B[13]),
        .I4(ALUControl[0]),
        .O(\Result[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[13]_INST_0_i_3 
       (.I0(\Result[14]_INST_0_i_4_n_0 ),
        .I1(\Result[13]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[13]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[14]_INST_0_i_5_n_0 ),
        .O(\Result[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[13]_INST_0_i_4 
       (.I0(\Result[19]_INST_0_i_7_n_0 ),
        .I1(\Result[15]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[17]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[13]_INST_0_i_6_n_0 ),
        .O(\Result[13]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Result[13]_INST_0_i_5 
       (.I0(\Result[13]_INST_0_i_7_n_0 ),
        .I1(B[1]),
        .I2(\Result[15]_INST_0_i_7_n_0 ),
        .I3(B[2]),
        .I4(\Result[19]_INST_0_i_8_n_0 ),
        .O(\Result[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[13]_INST_0_i_6 
       (.I0(A[21]),
        .I1(B[3]),
        .I2(A[29]),
        .I3(B[4]),
        .I4(A[13]),
        .O(\Result[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[13]_INST_0_i_7 
       (.I0(A[6]),
        .I1(B[2]),
        .I2(A[2]),
        .I3(B[3]),
        .I4(A[10]),
        .I5(B[4]),
        .O(\Result[13]_INST_0_i_7_n_0 ));
  MUXF7 \Result[14]_INST_0 
       (.I0(\Result[14]_INST_0_i_1_n_0 ),
        .I1(\Result[14]_INST_0_i_2_n_0 ),
        .O(Result[14]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[14]_INST_0_i_1 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(ALUControl[1]),
        .I3(data1[14]),
        .I4(ALUControl[0]),
        .I5(data0[14]),
        .O(\Result[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[14]_INST_0_i_2 
       (.I0(\Result[14]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[14]),
        .I3(B[14]),
        .I4(ALUControl[0]),
        .O(\Result[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[14]_INST_0_i_3 
       (.I0(\Result[15]_INST_0_i_4_n_0 ),
        .I1(\Result[14]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[14]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[15]_INST_0_i_5_n_0 ),
        .O(\Result[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[14]_INST_0_i_4 
       (.I0(\Result[16]_INST_0_i_6_n_0 ),
        .I1(\Result[16]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[18]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[14]_INST_0_i_6_n_0 ),
        .O(\Result[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Result[14]_INST_0_i_5 
       (.I0(\Result[14]_INST_0_i_7_n_0 ),
        .I1(B[1]),
        .I2(\Result[16]_INST_0_i_8_n_0 ),
        .I3(B[2]),
        .I4(\Result[20]_INST_0_i_7_n_0 ),
        .O(\Result[14]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[14]_INST_0_i_6 
       (.I0(A[22]),
        .I1(B[3]),
        .I2(A[30]),
        .I3(B[4]),
        .I4(A[14]),
        .O(\Result[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[14]_INST_0_i_7 
       (.I0(A[7]),
        .I1(B[2]),
        .I2(A[3]),
        .I3(B[3]),
        .I4(A[11]),
        .I5(B[4]),
        .O(\Result[14]_INST_0_i_7_n_0 ));
  MUXF7 \Result[15]_INST_0 
       (.I0(\Result[15]_INST_0_i_1_n_0 ),
        .I1(\Result[15]_INST_0_i_2_n_0 ),
        .O(Result[15]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[15]_INST_0_i_1 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(ALUControl[1]),
        .I3(data1[15]),
        .I4(ALUControl[0]),
        .I5(data0[15]),
        .O(\Result[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[15]_INST_0_i_2 
       (.I0(\Result[15]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[15]),
        .I3(B[15]),
        .I4(ALUControl[0]),
        .O(\Result[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[15]_INST_0_i_3 
       (.I0(\Result[16]_INST_0_i_4_n_0 ),
        .I1(\Result[15]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[15]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[16]_INST_0_i_5_n_0 ),
        .O(\Result[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[15]_INST_0_i_4 
       (.I0(\Result[17]_INST_0_i_6_n_0 ),
        .I1(\Result[17]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[19]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[15]_INST_0_i_6_n_0 ),
        .O(\Result[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[15]_INST_0_i_5 
       (.I0(\Result[15]_INST_0_i_7_n_0 ),
        .I1(\Result[19]_INST_0_i_8_n_0 ),
        .I2(B[1]),
        .I3(\Result[17]_INST_0_i_8_n_0 ),
        .I4(B[2]),
        .I5(\Result[21]_INST_0_i_7_n_0 ),
        .O(\Result[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[15]_INST_0_i_6 
       (.I0(A[23]),
        .I1(B[3]),
        .I2(A[31]),
        .I3(B[4]),
        .I4(A[15]),
        .O(\Result[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[15]_INST_0_i_7 
       (.I0(A[0]),
        .I1(B[3]),
        .I2(A[8]),
        .I3(B[4]),
        .O(\Result[15]_INST_0_i_7_n_0 ));
  MUXF7 \Result[16]_INST_0 
       (.I0(\Result[16]_INST_0_i_1_n_0 ),
        .I1(\Result[16]_INST_0_i_2_n_0 ),
        .O(Result[16]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[16]_INST_0_i_1 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(ALUControl[1]),
        .I3(data1[16]),
        .I4(ALUControl[0]),
        .I5(data0[16]),
        .O(\Result[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[16]_INST_0_i_2 
       (.I0(\Result[16]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[16]),
        .I3(B[16]),
        .I4(ALUControl[0]),
        .O(\Result[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[16]_INST_0_i_3 
       (.I0(\Result[17]_INST_0_i_4_n_0 ),
        .I1(\Result[16]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[16]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[17]_INST_0_i_5_n_0 ),
        .O(\Result[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[16]_INST_0_i_4 
       (.I0(\Result[18]_INST_0_i_6_n_0 ),
        .I1(\Result[18]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[16]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[16]_INST_0_i_7_n_0 ),
        .O(\Result[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[16]_INST_0_i_5 
       (.I0(\Result[16]_INST_0_i_8_n_0 ),
        .I1(\Result[20]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[18]_INST_0_i_8_n_0 ),
        .I4(B[2]),
        .I5(\Result[22]_INST_0_i_7_n_0 ),
        .O(\Result[16]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[16]_INST_0_i_6 
       (.I0(A[28]),
        .I1(B[3]),
        .I2(A[20]),
        .I3(B[4]),
        .O(\Result[16]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[16]_INST_0_i_7 
       (.I0(A[24]),
        .I1(B[3]),
        .I2(A[16]),
        .I3(B[4]),
        .O(\Result[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[16]_INST_0_i_8 
       (.I0(A[1]),
        .I1(B[3]),
        .I2(A[9]),
        .I3(B[4]),
        .O(\Result[16]_INST_0_i_8_n_0 ));
  MUXF7 \Result[17]_INST_0 
       (.I0(\Result[17]_INST_0_i_1_n_0 ),
        .I1(\Result[17]_INST_0_i_2_n_0 ),
        .O(Result[17]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[17]_INST_0_i_1 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(ALUControl[1]),
        .I3(data1[17]),
        .I4(ALUControl[0]),
        .I5(data0[17]),
        .O(\Result[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[17]_INST_0_i_2 
       (.I0(\Result[17]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[17]),
        .I3(B[17]),
        .I4(ALUControl[0]),
        .O(\Result[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[17]_INST_0_i_3 
       (.I0(\Result[18]_INST_0_i_4_n_0 ),
        .I1(\Result[17]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[17]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[18]_INST_0_i_5_n_0 ),
        .O(\Result[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[17]_INST_0_i_4 
       (.I0(\Result[19]_INST_0_i_6_n_0 ),
        .I1(\Result[19]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[17]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[17]_INST_0_i_7_n_0 ),
        .O(\Result[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[17]_INST_0_i_5 
       (.I0(\Result[17]_INST_0_i_8_n_0 ),
        .I1(\Result[21]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[19]_INST_0_i_8_n_0 ),
        .I4(B[2]),
        .I5(\Result[23]_INST_0_i_7_n_0 ),
        .O(\Result[17]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[17]_INST_0_i_6 
       (.I0(A[29]),
        .I1(B[3]),
        .I2(A[21]),
        .I3(B[4]),
        .O(\Result[17]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[17]_INST_0_i_7 
       (.I0(A[25]),
        .I1(B[3]),
        .I2(A[17]),
        .I3(B[4]),
        .O(\Result[17]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[17]_INST_0_i_8 
       (.I0(A[2]),
        .I1(B[3]),
        .I2(A[10]),
        .I3(B[4]),
        .O(\Result[17]_INST_0_i_8_n_0 ));
  MUXF7 \Result[18]_INST_0 
       (.I0(\Result[18]_INST_0_i_1_n_0 ),
        .I1(\Result[18]_INST_0_i_2_n_0 ),
        .O(Result[18]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[18]_INST_0_i_1 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(ALUControl[1]),
        .I3(data1[18]),
        .I4(ALUControl[0]),
        .I5(data0[18]),
        .O(\Result[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[18]_INST_0_i_2 
       (.I0(\Result[18]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[18]),
        .I3(B[18]),
        .I4(ALUControl[0]),
        .O(\Result[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[18]_INST_0_i_3 
       (.I0(\Result[19]_INST_0_i_4_n_0 ),
        .I1(\Result[18]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[18]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[19]_INST_0_i_5_n_0 ),
        .O(\Result[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Result[18]_INST_0_i_4 
       (.I0(\Result[20]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[18]_INST_0_i_6_n_0 ),
        .I3(B[2]),
        .I4(\Result[18]_INST_0_i_7_n_0 ),
        .O(\Result[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[18]_INST_0_i_5 
       (.I0(\Result[18]_INST_0_i_8_n_0 ),
        .I1(\Result[22]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[20]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[24]_INST_0_i_7_n_0 ),
        .O(\Result[18]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[18]_INST_0_i_6 
       (.I0(A[30]),
        .I1(B[3]),
        .I2(A[22]),
        .I3(B[4]),
        .O(\Result[18]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[18]_INST_0_i_7 
       (.I0(A[26]),
        .I1(B[3]),
        .I2(A[18]),
        .I3(B[4]),
        .O(\Result[18]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[18]_INST_0_i_8 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(A[11]),
        .I3(B[4]),
        .O(\Result[18]_INST_0_i_8_n_0 ));
  MUXF7 \Result[19]_INST_0 
       (.I0(\Result[19]_INST_0_i_1_n_0 ),
        .I1(\Result[19]_INST_0_i_2_n_0 ),
        .O(Result[19]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[19]_INST_0_i_1 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(ALUControl[1]),
        .I3(data1[19]),
        .I4(ALUControl[0]),
        .I5(data0[19]),
        .O(\Result[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[19]_INST_0_i_2 
       (.I0(\Result[19]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[19]),
        .I3(B[19]),
        .I4(ALUControl[0]),
        .O(\Result[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[19]_INST_0_i_3 
       (.I0(\Result[20]_INST_0_i_4_n_0 ),
        .I1(\Result[19]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[19]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[20]_INST_0_i_5_n_0 ),
        .O(\Result[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Result[19]_INST_0_i_4 
       (.I0(\Result[21]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[19]_INST_0_i_6_n_0 ),
        .I3(B[2]),
        .I4(\Result[19]_INST_0_i_7_n_0 ),
        .O(\Result[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[19]_INST_0_i_5 
       (.I0(\Result[19]_INST_0_i_8_n_0 ),
        .I1(\Result[23]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[21]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[25]_INST_0_i_7_n_0 ),
        .O(\Result[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[19]_INST_0_i_6 
       (.I0(A[31]),
        .I1(B[3]),
        .I2(A[23]),
        .I3(B[4]),
        .O(\Result[19]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[19]_INST_0_i_7 
       (.I0(A[27]),
        .I1(B[3]),
        .I2(A[19]),
        .I3(B[4]),
        .O(\Result[19]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[19]_INST_0_i_8 
       (.I0(A[4]),
        .I1(B[3]),
        .I2(A[12]),
        .I3(B[4]),
        .O(\Result[19]_INST_0_i_8_n_0 ));
  MUXF7 \Result[1]_INST_0 
       (.I0(\Result[1]_INST_0_i_1_n_0 ),
        .I1(\Result[1]_INST_0_i_2_n_0 ),
        .O(Result[1]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[1]_INST_0_i_1 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(ALUControl[1]),
        .I3(data1[1]),
        .I4(ALUControl[0]),
        .I5(data0[1]),
        .O(\Result[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[1]_INST_0_i_2 
       (.I0(\Result[1]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(ALUControl[0]),
        .O(\Result[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[1]_INST_0_i_3 
       (.I0(\Result[2]_INST_0_i_4_n_0 ),
        .I1(\Result[1]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[1]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[2]_INST_0_i_5_n_0 ),
        .O(\Result[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[1]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_13_n_0 ),
        .I1(\Result[3]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_15_n_0 ),
        .I4(B[2]),
        .I5(\Result[1]_INST_0_i_6_n_0 ),
        .O(\Result[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Result[1]_INST_0_i_5 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[0]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\Result[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[1]_INST_0_i_6 
       (.I0(A[25]),
        .I1(A[9]),
        .I2(B[3]),
        .I3(A[17]),
        .I4(B[4]),
        .I5(A[1]),
        .O(\Result[1]_INST_0_i_6_n_0 ));
  MUXF7 \Result[20]_INST_0 
       (.I0(\Result[20]_INST_0_i_1_n_0 ),
        .I1(\Result[20]_INST_0_i_2_n_0 ),
        .O(Result[20]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[20]_INST_0_i_1 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(ALUControl[1]),
        .I3(data1[20]),
        .I4(ALUControl[0]),
        .I5(data0[20]),
        .O(\Result[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[20]_INST_0_i_2 
       (.I0(\Result[20]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[20]),
        .I3(B[20]),
        .I4(ALUControl[0]),
        .O(\Result[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[20]_INST_0_i_3 
       (.I0(\Result[21]_INST_0_i_4_n_0 ),
        .I1(\Result[20]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[20]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[21]_INST_0_i_5_n_0 ),
        .O(\Result[20]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[20]_INST_0_i_4 
       (.I0(\Result[22]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[20]_INST_0_i_6_n_0 ),
        .O(\Result[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[20]_INST_0_i_5 
       (.I0(\Result[20]_INST_0_i_7_n_0 ),
        .I1(\Result[24]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[22]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[26]_INST_0_i_7_n_0 ),
        .O(\Result[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[20]_INST_0_i_6 
       (.I0(A[24]),
        .I1(B[2]),
        .I2(A[28]),
        .I3(B[3]),
        .I4(A[20]),
        .I5(B[4]),
        .O(\Result[20]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[20]_INST_0_i_7 
       (.I0(A[5]),
        .I1(B[3]),
        .I2(A[13]),
        .I3(B[4]),
        .O(\Result[20]_INST_0_i_7_n_0 ));
  MUXF7 \Result[21]_INST_0 
       (.I0(\Result[21]_INST_0_i_1_n_0 ),
        .I1(\Result[21]_INST_0_i_2_n_0 ),
        .O(Result[21]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[21]_INST_0_i_1 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(ALUControl[1]),
        .I3(data1[21]),
        .I4(ALUControl[0]),
        .I5(data0[21]),
        .O(\Result[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[21]_INST_0_i_2 
       (.I0(\Result[21]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[21]),
        .I3(B[21]),
        .I4(ALUControl[0]),
        .O(\Result[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[21]_INST_0_i_3 
       (.I0(\Result[22]_INST_0_i_4_n_0 ),
        .I1(\Result[21]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[21]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[22]_INST_0_i_5_n_0 ),
        .O(\Result[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[21]_INST_0_i_4 
       (.I0(\Result[23]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[21]_INST_0_i_6_n_0 ),
        .O(\Result[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[21]_INST_0_i_5 
       (.I0(\Result[21]_INST_0_i_7_n_0 ),
        .I1(\Result[25]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[23]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[27]_INST_0_i_7_n_0 ),
        .O(\Result[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[21]_INST_0_i_6 
       (.I0(A[25]),
        .I1(B[2]),
        .I2(A[29]),
        .I3(B[3]),
        .I4(A[21]),
        .I5(B[4]),
        .O(\Result[21]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[21]_INST_0_i_7 
       (.I0(A[6]),
        .I1(B[3]),
        .I2(A[14]),
        .I3(B[4]),
        .O(\Result[21]_INST_0_i_7_n_0 ));
  MUXF7 \Result[22]_INST_0 
       (.I0(\Result[22]_INST_0_i_1_n_0 ),
        .I1(\Result[22]_INST_0_i_2_n_0 ),
        .O(Result[22]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[22]_INST_0_i_1 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(ALUControl[1]),
        .I3(data1[22]),
        .I4(ALUControl[0]),
        .I5(data0[22]),
        .O(\Result[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[22]_INST_0_i_2 
       (.I0(\Result[22]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[22]),
        .I3(B[22]),
        .I4(ALUControl[0]),
        .O(\Result[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[22]_INST_0_i_3 
       (.I0(\Result[23]_INST_0_i_4_n_0 ),
        .I1(\Result[22]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[22]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[23]_INST_0_i_5_n_0 ),
        .O(\Result[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[22]_INST_0_i_4 
       (.I0(\Result[24]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[22]_INST_0_i_6_n_0 ),
        .O(\Result[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[22]_INST_0_i_5 
       (.I0(\Result[22]_INST_0_i_7_n_0 ),
        .I1(\Result[26]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[24]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[28]_INST_0_i_6_n_0 ),
        .O(\Result[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[22]_INST_0_i_6 
       (.I0(A[26]),
        .I1(B[2]),
        .I2(A[30]),
        .I3(B[3]),
        .I4(A[22]),
        .I5(B[4]),
        .O(\Result[22]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \Result[22]_INST_0_i_7 
       (.I0(A[7]),
        .I1(B[3]),
        .I2(A[15]),
        .I3(B[4]),
        .O(\Result[22]_INST_0_i_7_n_0 ));
  MUXF7 \Result[23]_INST_0 
       (.I0(\Result[23]_INST_0_i_1_n_0 ),
        .I1(\Result[23]_INST_0_i_2_n_0 ),
        .O(Result[23]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[23]_INST_0_i_1 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(ALUControl[1]),
        .I3(data1[23]),
        .I4(ALUControl[0]),
        .I5(data0[23]),
        .O(\Result[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[23]_INST_0_i_2 
       (.I0(\Result[23]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[23]),
        .I3(B[23]),
        .I4(ALUControl[0]),
        .O(\Result[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[23]_INST_0_i_3 
       (.I0(\Result[24]_INST_0_i_4_n_0 ),
        .I1(\Result[23]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[23]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[24]_INST_0_i_5_n_0 ),
        .O(\Result[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[23]_INST_0_i_4 
       (.I0(\Result[25]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[23]_INST_0_i_6_n_0 ),
        .O(\Result[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[23]_INST_0_i_5 
       (.I0(\Result[23]_INST_0_i_7_n_0 ),
        .I1(\Result[27]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\Result[25]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_8_n_0 ),
        .O(\Result[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \Result[23]_INST_0_i_6 
       (.I0(A[27]),
        .I1(B[2]),
        .I2(A[31]),
        .I3(B[3]),
        .I4(A[23]),
        .I5(B[4]),
        .O(\Result[23]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[23]_INST_0_i_7 
       (.I0(A[8]),
        .I1(B[3]),
        .I2(A[0]),
        .I3(B[4]),
        .I4(A[16]),
        .O(\Result[23]_INST_0_i_7_n_0 ));
  MUXF7 \Result[24]_INST_0 
       (.I0(\Result[24]_INST_0_i_1_n_0 ),
        .I1(\Result[24]_INST_0_i_2_n_0 ),
        .O(Result[24]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[24]_INST_0_i_1 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(ALUControl[1]),
        .I3(data1[24]),
        .I4(ALUControl[0]),
        .I5(data0[24]),
        .O(\Result[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[24]_INST_0_i_2 
       (.I0(\Result[24]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[24]),
        .I3(B[24]),
        .I4(ALUControl[0]),
        .O(\Result[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[24]_INST_0_i_3 
       (.I0(\Result[25]_INST_0_i_4_n_0 ),
        .I1(\Result[24]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[24]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[25]_INST_0_i_5_n_0 ),
        .O(\Result[24]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[24]_INST_0_i_4 
       (.I0(\Result[26]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[24]_INST_0_i_6_n_0 ),
        .O(\Result[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[24]_INST_0_i_5 
       (.I0(\Result[24]_INST_0_i_7_n_0 ),
        .I1(\Result[28]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[26]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_12_n_0 ),
        .O(\Result[24]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[24]_INST_0_i_6 
       (.I0(A[28]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[24]),
        .I4(B[3]),
        .O(\Result[24]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[24]_INST_0_i_7 
       (.I0(A[9]),
        .I1(B[3]),
        .I2(A[1]),
        .I3(B[4]),
        .I4(A[17]),
        .O(\Result[24]_INST_0_i_7_n_0 ));
  MUXF7 \Result[25]_INST_0 
       (.I0(\Result[25]_INST_0_i_1_n_0 ),
        .I1(\Result[25]_INST_0_i_2_n_0 ),
        .O(Result[25]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[25]_INST_0_i_1 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(ALUControl[1]),
        .I3(data1[25]),
        .I4(ALUControl[0]),
        .I5(data0[25]),
        .O(\Result[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[25]_INST_0_i_2 
       (.I0(\Result[25]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[25]),
        .I3(B[25]),
        .I4(ALUControl[0]),
        .O(\Result[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[25]_INST_0_i_3 
       (.I0(\Result[26]_INST_0_i_4_n_0 ),
        .I1(\Result[25]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[25]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[26]_INST_0_i_5_n_0 ),
        .O(\Result[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[25]_INST_0_i_4 
       (.I0(\Result[27]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[25]_INST_0_i_6_n_0 ),
        .O(\Result[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[25]_INST_0_i_5 
       (.I0(\Result[25]_INST_0_i_7_n_0 ),
        .I1(\Result[29]_INST_0_i_8_n_0 ),
        .I2(B[1]),
        .I3(\Result[27]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_10_n_0 ),
        .O(\Result[25]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[25]_INST_0_i_6 
       (.I0(A[29]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[25]),
        .I4(B[3]),
        .O(\Result[25]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[25]_INST_0_i_7 
       (.I0(A[10]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(B[4]),
        .I4(A[18]),
        .O(\Result[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[26]_INST_0 
       (.I0(\Result[26]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[26]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[26]_INST_0_i_3_n_0 ),
        .O(Result[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[26]_INST_0_i_1 
       (.I0(\Result[27]_INST_0_i_4_n_0 ),
        .I1(\Result[26]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[26]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[27]_INST_0_i_5_n_0 ),
        .O(\Result[26]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Result[26]_INST_0_i_2 
       (.I0(B[26]),
        .I1(A[26]),
        .O(\Result[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[26]_INST_0_i_3 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUControl[1]),
        .I3(data1[26]),
        .I4(ALUControl[0]),
        .I5(data0[26]),
        .O(\Result[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \Result[26]_INST_0_i_4 
       (.I0(B[3]),
        .I1(A[28]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\Result[26]_INST_0_i_6_n_0 ),
        .O(\Result[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[26]_INST_0_i_5 
       (.I0(\Result[26]_INST_0_i_7_n_0 ),
        .I1(\Result[29]_INST_0_i_12_n_0 ),
        .I2(B[1]),
        .I3(\Result[28]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_14_n_0 ),
        .O(\Result[26]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[26]_INST_0_i_6 
       (.I0(A[30]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[26]),
        .I4(B[3]),
        .O(\Result[26]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[26]_INST_0_i_7 
       (.I0(A[11]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(B[4]),
        .I4(A[19]),
        .O(\Result[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[27]_INST_0 
       (.I0(\Result[27]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[27]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[27]_INST_0_i_3_n_0 ),
        .O(Result[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[27]_INST_0_i_1 
       (.I0(\Result[28]_INST_0_i_4_n_0 ),
        .I1(\Result[27]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[27]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[28]_INST_0_i_5_n_0 ),
        .O(\Result[27]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Result[27]_INST_0_i_2 
       (.I0(B[27]),
        .I1(A[27]),
        .O(\Result[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[27]_INST_0_i_3 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUControl[1]),
        .I3(data1[27]),
        .I4(ALUControl[0]),
        .I5(data0[27]),
        .O(\Result[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \Result[27]_INST_0_i_4 
       (.I0(B[3]),
        .I1(A[29]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\Result[27]_INST_0_i_6_n_0 ),
        .O(\Result[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[27]_INST_0_i_5 
       (.I0(\Result[27]_INST_0_i_7_n_0 ),
        .I1(\Result[29]_INST_0_i_10_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_8_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_9_n_0 ),
        .O(\Result[27]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[27]_INST_0_i_6 
       (.I0(A[31]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[27]),
        .I4(B[3]),
        .O(\Result[27]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[27]_INST_0_i_7 
       (.I0(A[12]),
        .I1(B[3]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(A[20]),
        .O(\Result[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[28]_INST_0 
       (.I0(\Result[28]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[28]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[28]_INST_0_i_3_n_0 ),
        .O(Result[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[28]_INST_0_i_1 
       (.I0(\Result[29]_INST_0_i_5_n_0 ),
        .I1(\Result[28]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[28]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[29]_INST_0_i_6_n_0 ),
        .O(\Result[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Result[28]_INST_0_i_2 
       (.I0(B[28]),
        .I1(A[28]),
        .O(\Result[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[28]_INST_0_i_3 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUControl[1]),
        .I3(data1[28]),
        .I4(ALUControl[0]),
        .I5(data0[28]),
        .O(\Result[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \Result[28]_INST_0_i_4 
       (.I0(A[30]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[28]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\Result[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[28]_INST_0_i_5 
       (.I0(\Result[28]_INST_0_i_6_n_0 ),
        .I1(\Result[29]_INST_0_i_14_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_12_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_13_n_0 ),
        .O(\Result[28]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[28]_INST_0_i_6 
       (.I0(A[13]),
        .I1(B[3]),
        .I2(A[5]),
        .I3(B[4]),
        .I4(A[21]),
        .O(\Result[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[29]_INST_0 
       (.I0(\Result[29]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[29]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[29]_INST_0_i_3_n_0 ),
        .O(Result[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_1 
       (.I0(\Result[29]_INST_0_i_4_n_0 ),
        .I1(\Result[29]_INST_0_i_5_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[29]_INST_0_i_6_n_0 ),
        .I4(B[0]),
        .I5(\Result[29]_INST_0_i_7_n_0 ),
        .O(\Result[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_10 
       (.I0(A[0]),
        .I1(A[16]),
        .I2(B[3]),
        .I3(A[8]),
        .I4(B[4]),
        .I5(A[24]),
        .O(\Result[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_11 
       (.I0(A[4]),
        .I1(A[20]),
        .I2(B[3]),
        .I3(A[12]),
        .I4(B[4]),
        .I5(A[28]),
        .O(\Result[29]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[29]_INST_0_i_12 
       (.I0(A[15]),
        .I1(B[3]),
        .I2(A[7]),
        .I3(B[4]),
        .I4(A[23]),
        .O(\Result[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_13 
       (.I0(A[3]),
        .I1(A[19]),
        .I2(B[3]),
        .I3(A[11]),
        .I4(B[4]),
        .I5(A[27]),
        .O(\Result[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_14 
       (.I0(A[1]),
        .I1(A[17]),
        .I2(B[3]),
        .I3(A[9]),
        .I4(B[4]),
        .I5(A[25]),
        .O(\Result[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_15 
       (.I0(A[5]),
        .I1(A[21]),
        .I2(B[3]),
        .I3(A[13]),
        .I4(B[4]),
        .I5(A[29]),
        .O(\Result[29]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Result[29]_INST_0_i_2 
       (.I0(B[29]),
        .I1(A[29]),
        .O(\Result[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[29]_INST_0_i_3 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUControl[1]),
        .I3(data1[29]),
        .I4(ALUControl[0]),
        .I5(data0[29]),
        .O(\Result[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Result[29]_INST_0_i_4 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[30]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\Result[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \Result[29]_INST_0_i_5 
       (.I0(A[31]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[29]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\Result[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_6 
       (.I0(\Result[29]_INST_0_i_8_n_0 ),
        .I1(\Result[29]_INST_0_i_9_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_10_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_11_n_0 ),
        .O(\Result[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_7 
       (.I0(\Result[29]_INST_0_i_12_n_0 ),
        .I1(\Result[29]_INST_0_i_13_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_14_n_0 ),
        .I4(B[2]),
        .I5(\Result[29]_INST_0_i_15_n_0 ),
        .O(\Result[29]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[29]_INST_0_i_8 
       (.I0(A[14]),
        .I1(B[3]),
        .I2(A[6]),
        .I3(B[4]),
        .I4(A[22]),
        .O(\Result[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[29]_INST_0_i_9 
       (.I0(A[2]),
        .I1(A[18]),
        .I2(B[3]),
        .I3(A[10]),
        .I4(B[4]),
        .I5(A[26]),
        .O(\Result[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[2]_INST_0 
       (.I0(\Result[2]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[2]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[2]_INST_0_i_3_n_0 ),
        .O(Result[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[2]_INST_0_i_1 
       (.I0(\Result[3]_INST_0_i_4_n_0 ),
        .I1(\Result[2]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[2]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[3]_INST_0_i_5_n_0 ),
        .O(\Result[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Result[2]_INST_0_i_2 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\Result[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[2]_INST_0_i_3 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(ALUControl[1]),
        .I3(data1[2]),
        .I4(ALUControl[0]),
        .I5(data0[2]),
        .O(\Result[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[2]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_9_n_0 ),
        .I1(\Result[4]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_11_n_0 ),
        .I4(B[2]),
        .I5(\Result[2]_INST_0_i_6_n_0 ),
        .O(\Result[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Result[2]_INST_0_i_5 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[1]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\Result[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[2]_INST_0_i_6 
       (.I0(A[26]),
        .I1(A[10]),
        .I2(B[3]),
        .I3(A[18]),
        .I4(B[4]),
        .I5(A[2]),
        .O(\Result[2]_INST_0_i_6_n_0 ));
  MUXF7 \Result[30]_INST_0 
       (.I0(\Result[30]_INST_0_i_1_n_0 ),
        .I1(\Result[30]_INST_0_i_2_n_0 ),
        .O(Result[30]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[30]_INST_0_i_1 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(ALUControl[1]),
        .I3(data1[30]),
        .I4(ALUControl[0]),
        .I5(data0[30]),
        .O(\Result[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[30]_INST_0_i_2 
       (.I0(\Result[30]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[30]),
        .I3(B[30]),
        .I4(ALUControl[0]),
        .O(\Result[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[30]_INST_0_i_3 
       (.I0(\Result[31]_INST_0_i_4_n_0 ),
        .I1(\Result[29]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[29]_INST_0_i_7_n_0 ),
        .I4(B[0]),
        .I5(\Result[31]_INST_0_i_5_n_0 ),
        .O(\Result[30]_INST_0_i_3_n_0 ));
  MUXF7 \Result[31]_INST_0 
       (.I0(\Result[31]_INST_0_i_1_n_0 ),
        .I1(\Result[31]_INST_0_i_2_n_0 ),
        .O(Result[31]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[31]_INST_0_i_1 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(ALUControl[1]),
        .I3(data1[31]),
        .I4(ALUControl[0]),
        .I5(data0[31]),
        .O(\Result[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[31]_INST_0_i_2 
       (.I0(\Result[31]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[31]),
        .I3(B[31]),
        .I4(ALUControl[0]),
        .O(\Result[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[31]_INST_0_i_3 
       (.I0(\Result[31]_INST_0_i_4_n_0 ),
        .I1(ALUControl[0]),
        .I2(\Result[31]_INST_0_i_5_n_0 ),
        .I3(B[0]),
        .I4(\Result[31]_INST_0_i_6_n_0 ),
        .O(\Result[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Result[31]_INST_0_i_4 
       (.I0(B[2]),
        .I1(B[4]),
        .I2(A[31]),
        .I3(B[3]),
        .I4(B[1]),
        .O(\Result[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[31]_INST_0_i_5 
       (.I0(\Result[29]_INST_0_i_10_n_0 ),
        .I1(\Result[29]_INST_0_i_11_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_9_n_0 ),
        .I4(B[2]),
        .I5(\Result[31]_INST_0_i_7_n_0 ),
        .O(\Result[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[31]_INST_0_i_6 
       (.I0(\Result[29]_INST_0_i_14_n_0 ),
        .I1(\Result[29]_INST_0_i_15_n_0 ),
        .I2(B[1]),
        .I3(\Result[29]_INST_0_i_13_n_0 ),
        .I4(B[2]),
        .I5(\Result[31]_INST_0_i_8_n_0 ),
        .O(\Result[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[31]_INST_0_i_7 
       (.I0(A[6]),
        .I1(A[22]),
        .I2(B[3]),
        .I3(A[14]),
        .I4(B[4]),
        .I5(A[30]),
        .O(\Result[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[31]_INST_0_i_8 
       (.I0(A[7]),
        .I1(A[23]),
        .I2(B[3]),
        .I3(A[15]),
        .I4(B[4]),
        .I5(A[31]),
        .O(\Result[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[3]_INST_0 
       (.I0(\Result[3]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[3]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[3]_INST_0_i_3_n_0 ),
        .O(Result[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[3]_INST_0_i_1 
       (.I0(\Result[4]_INST_0_i_4_n_0 ),
        .I1(\Result[3]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[3]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[4]_INST_0_i_5_n_0 ),
        .O(\Result[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Result[3]_INST_0_i_2 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\Result[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[3]_INST_0_i_3 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(ALUControl[1]),
        .I3(data1[3]),
        .I4(ALUControl[0]),
        .I5(data0[3]),
        .O(\Result[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[3]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_14_n_0 ),
        .I1(\Result[5]_INST_0_i_15_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_13_n_0 ),
        .I4(B[2]),
        .I5(\Result[3]_INST_0_i_6_n_0 ),
        .O(\Result[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \Result[3]_INST_0_i_5 
       (.I0(A[0]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[2]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\Result[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[3]_INST_0_i_6 
       (.I0(A[27]),
        .I1(A[11]),
        .I2(B[3]),
        .I3(A[19]),
        .I4(B[4]),
        .I5(A[3]),
        .O(\Result[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[4]_INST_0 
       (.I0(\Result[4]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[4]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[4]_INST_0_i_3_n_0 ),
        .O(Result[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[4]_INST_0_i_1 
       (.I0(\Result[5]_INST_0_i_5_n_0 ),
        .I1(\Result[4]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[4]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[5]_INST_0_i_6_n_0 ),
        .O(\Result[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Result[4]_INST_0_i_2 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\Result[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[4]_INST_0_i_3 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(ALUControl[1]),
        .I3(data1[4]),
        .I4(ALUControl[0]),
        .I5(data0[4]),
        .O(\Result[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[4]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_10_n_0 ),
        .I1(\Result[5]_INST_0_i_11_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_9_n_0 ),
        .I4(B[2]),
        .I5(\Result[4]_INST_0_i_6_n_0 ),
        .O(\Result[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \Result[4]_INST_0_i_5 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[3]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\Result[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[4]_INST_0_i_6 
       (.I0(A[28]),
        .I1(A[12]),
        .I2(B[3]),
        .I3(A[20]),
        .I4(B[4]),
        .I5(A[4]),
        .O(\Result[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \Result[5]_INST_0 
       (.I0(\Result[5]_INST_0_i_1_n_0 ),
        .I1(ALUControl[1]),
        .I2(\Result[5]_INST_0_i_2_n_0 ),
        .I3(ALUControl[0]),
        .I4(ALUControl[2]),
        .I5(\Result[5]_INST_0_i_3_n_0 ),
        .O(Result[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_1 
       (.I0(\Result[5]_INST_0_i_4_n_0 ),
        .I1(\Result[5]_INST_0_i_5_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[5]_INST_0_i_6_n_0 ),
        .I4(B[0]),
        .I5(\Result[5]_INST_0_i_7_n_0 ),
        .O(\Result[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[5]_INST_0_i_10 
       (.I0(A[18]),
        .I1(B[3]),
        .I2(A[26]),
        .I3(B[4]),
        .I4(A[10]),
        .O(\Result[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_11 
       (.I0(A[30]),
        .I1(A[14]),
        .I2(B[3]),
        .I3(A[22]),
        .I4(B[4]),
        .I5(A[6]),
        .O(\Result[5]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[5]_INST_0_i_12 
       (.I0(A[19]),
        .I1(B[3]),
        .I2(A[27]),
        .I3(B[4]),
        .I4(A[11]),
        .O(\Result[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_13 
       (.I0(A[31]),
        .I1(A[15]),
        .I2(B[3]),
        .I3(A[23]),
        .I4(B[4]),
        .I5(A[7]),
        .O(\Result[5]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[5]_INST_0_i_14 
       (.I0(A[17]),
        .I1(B[3]),
        .I2(A[25]),
        .I3(B[4]),
        .I4(A[9]),
        .O(\Result[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_15 
       (.I0(A[29]),
        .I1(A[13]),
        .I2(B[3]),
        .I3(A[21]),
        .I4(B[4]),
        .I5(A[5]),
        .O(\Result[5]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[5]_INST_0_i_16 
       (.I0(A[0]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[4]),
        .I4(B[3]),
        .O(\Result[5]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[5]_INST_0_i_17 
       (.I0(A[1]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[5]),
        .I4(B[3]),
        .O(\Result[5]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Result[5]_INST_0_i_2 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\Result[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[5]_INST_0_i_3 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(ALUControl[1]),
        .I3(data1[5]),
        .I4(ALUControl[0]),
        .I5(data0[5]),
        .O(\Result[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_4 
       (.I0(\Result[5]_INST_0_i_8_n_0 ),
        .I1(\Result[5]_INST_0_i_9_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_10_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_11_n_0 ),
        .O(\Result[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[5]_INST_0_i_5 
       (.I0(\Result[5]_INST_0_i_12_n_0 ),
        .I1(\Result[5]_INST_0_i_13_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_14_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_15_n_0 ),
        .O(\Result[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \Result[5]_INST_0_i_6 
       (.I0(B[3]),
        .I1(A[2]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\Result[5]_INST_0_i_16_n_0 ),
        .O(\Result[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \Result[5]_INST_0_i_7 
       (.I0(B[3]),
        .I1(A[3]),
        .I2(B[4]),
        .I3(B[2]),
        .I4(B[1]),
        .I5(\Result[5]_INST_0_i_17_n_0 ),
        .O(\Result[5]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[5]_INST_0_i_8 
       (.I0(A[20]),
        .I1(B[3]),
        .I2(A[28]),
        .I3(B[4]),
        .I4(A[12]),
        .O(\Result[5]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Result[5]_INST_0_i_9 
       (.I0(A[16]),
        .I1(B[3]),
        .I2(A[24]),
        .I3(B[4]),
        .I4(A[8]),
        .O(\Result[5]_INST_0_i_9_n_0 ));
  MUXF7 \Result[6]_INST_0 
       (.I0(\Result[6]_INST_0_i_1_n_0 ),
        .I1(\Result[6]_INST_0_i_2_n_0 ),
        .O(Result[6]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[6]_INST_0_i_1 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(ALUControl[1]),
        .I3(data1[6]),
        .I4(ALUControl[0]),
        .I5(data0[6]),
        .O(\Result[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[6]_INST_0_i_2 
       (.I0(\Result[6]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(ALUControl[0]),
        .O(\Result[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[6]_INST_0_i_3 
       (.I0(\Result[7]_INST_0_i_4_n_0 ),
        .I1(\Result[5]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[5]_INST_0_i_7_n_0 ),
        .I4(B[0]),
        .I5(\Result[7]_INST_0_i_5_n_0 ),
        .O(\Result[6]_INST_0_i_3_n_0 ));
  MUXF7 \Result[7]_INST_0 
       (.I0(\Result[7]_INST_0_i_1_n_0 ),
        .I1(\Result[7]_INST_0_i_2_n_0 ),
        .O(Result[7]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[7]_INST_0_i_1 
       (.I0(A[7]),
        .I1(B[7]),
        .I2(ALUControl[1]),
        .I3(data1[7]),
        .I4(ALUControl[0]),
        .I5(data0[7]),
        .O(\Result[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[7]_INST_0_i_2 
       (.I0(\Result[7]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[7]),
        .I3(B[7]),
        .I4(ALUControl[0]),
        .O(\Result[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[7]_INST_0_i_3 
       (.I0(\Result[8]_INST_0_i_4_n_0 ),
        .I1(\Result[7]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[7]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[8]_INST_0_i_5_n_0 ),
        .O(\Result[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[7]_INST_0_i_4 
       (.I0(\Result[13]_INST_0_i_6_n_0 ),
        .I1(\Result[5]_INST_0_i_14_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_12_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_13_n_0 ),
        .O(\Result[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[7]_INST_0_i_5 
       (.I0(\Result[5]_INST_0_i_16_n_0 ),
        .I1(B[1]),
        .I2(\Result[9]_INST_0_i_6_n_0 ),
        .O(\Result[7]_INST_0_i_5_n_0 ));
  MUXF7 \Result[8]_INST_0 
       (.I0(\Result[8]_INST_0_i_1_n_0 ),
        .I1(\Result[8]_INST_0_i_2_n_0 ),
        .O(Result[8]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[8]_INST_0_i_1 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(ALUControl[1]),
        .I3(data1[8]),
        .I4(ALUControl[0]),
        .I5(data0[8]),
        .O(\Result[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[8]_INST_0_i_2 
       (.I0(\Result[8]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[8]),
        .I3(B[8]),
        .I4(ALUControl[0]),
        .O(\Result[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[8]_INST_0_i_3 
       (.I0(\Result[9]_INST_0_i_4_n_0 ),
        .I1(\Result[8]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[8]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[9]_INST_0_i_5_n_0 ),
        .O(\Result[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[8]_INST_0_i_4 
       (.I0(\Result[14]_INST_0_i_6_n_0 ),
        .I1(\Result[5]_INST_0_i_10_n_0 ),
        .I2(B[1]),
        .I3(\Result[5]_INST_0_i_8_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_9_n_0 ),
        .O(\Result[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[8]_INST_0_i_5 
       (.I0(\Result[5]_INST_0_i_17_n_0 ),
        .I1(B[1]),
        .I2(\Result[10]_INST_0_i_6_n_0 ),
        .O(\Result[8]_INST_0_i_5_n_0 ));
  MUXF7 \Result[9]_INST_0 
       (.I0(\Result[9]_INST_0_i_1_n_0 ),
        .I1(\Result[9]_INST_0_i_2_n_0 ),
        .O(Result[9]),
        .S(ALUControl[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \Result[9]_INST_0_i_1 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(ALUControl[1]),
        .I3(data1[9]),
        .I4(ALUControl[0]),
        .I5(data0[9]),
        .O(\Result[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \Result[9]_INST_0_i_2 
       (.I0(\Result[9]_INST_0_i_3_n_0 ),
        .I1(ALUControl[1]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(ALUControl[0]),
        .O(\Result[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[9]_INST_0_i_3 
       (.I0(\Result[10]_INST_0_i_4_n_0 ),
        .I1(\Result[9]_INST_0_i_4_n_0 ),
        .I2(ALUControl[0]),
        .I3(\Result[9]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\Result[10]_INST_0_i_5_n_0 ),
        .O(\Result[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Result[9]_INST_0_i_4 
       (.I0(\Result[15]_INST_0_i_6_n_0 ),
        .I1(\Result[5]_INST_0_i_12_n_0 ),
        .I2(B[1]),
        .I3(\Result[13]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\Result[5]_INST_0_i_14_n_0 ),
        .O(\Result[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Result[9]_INST_0_i_5 
       (.I0(\Result[9]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\Result[11]_INST_0_i_6_n_0 ),
        .O(\Result[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \Result[9]_INST_0_i_6 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[6]),
        .I4(B[3]),
        .O(\Result[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    Zero_INST_0
       (.I0(Zero_INST_0_i_1_n_0),
        .I1(Zero_INST_0_i_2_n_0),
        .I2(Zero_INST_0_i_3_n_0),
        .I3(Zero_INST_0_i_4_n_0),
        .I4(Zero_INST_0_i_5_n_0),
        .I5(Zero_INST_0_i_6_n_0),
        .O(Zero));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_INST_0_i_1
       (.I0(Result[19]),
        .I1(Result[18]),
        .I2(Result[17]),
        .I3(Result[16]),
        .O(Zero_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    Zero_INST_0_i_10
       (.I0(\Result[2]_INST_0_i_3_n_0 ),
        .I1(Zero_INST_0_i_17_n_0),
        .I2(\Result[3]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(Zero_INST_0_i_18_n_0),
        .O(Zero_INST_0_i_10_n_0));
  MUXF7 Zero_INST_0_i_11
       (.I0(Zero_INST_0_i_19_n_0),
        .I1(\Result[28]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_11_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_12
       (.I0(Zero_INST_0_i_20_n_0),
        .I1(\Result[29]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_12_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_13
       (.I0(Zero_INST_0_i_21_n_0),
        .I1(\Result[26]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_13_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_14
       (.I0(Zero_INST_0_i_22_n_0),
        .I1(\Result[27]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_14_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_15
       (.I0(Zero_INST_0_i_23_n_0),
        .I1(\Result[4]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_15_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_16
       (.I0(Zero_INST_0_i_24_n_0),
        .I1(\Result[5]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_16_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_17
       (.I0(Zero_INST_0_i_25_n_0),
        .I1(\Result[2]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_17_n_0),
        .S(ALUControl[1]));
  MUXF7 Zero_INST_0_i_18
       (.I0(Zero_INST_0_i_26_n_0),
        .I1(\Result[3]_INST_0_i_1_n_0 ),
        .O(Zero_INST_0_i_18_n_0),
        .S(ALUControl[1]));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_19
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_19_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_INST_0_i_2
       (.I0(Result[23]),
        .I1(Result[22]),
        .I2(Result[21]),
        .I3(Result[20]),
        .O(Zero_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_20
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_20_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_21
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_21_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_22
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_22_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_23
       (.I0(A[4]),
        .I1(B[4]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_23_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_24
       (.I0(A[5]),
        .I1(B[5]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_24_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_25
       (.I0(A[2]),
        .I1(B[2]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_25_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    Zero_INST_0_i_26
       (.I0(A[3]),
        .I1(B[3]),
        .I2(ALUControl[0]),
        .O(Zero_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Zero_INST_0_i_3
       (.I0(Zero_INST_0_i_7_n_0),
        .I1(Result[31]),
        .I2(Result[30]),
        .I3(Zero_INST_0_i_8_n_0),
        .I4(Result[24]),
        .I5(Result[25]),
        .O(Zero_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_INST_0_i_4
       (.I0(Result[15]),
        .I1(Result[14]),
        .I2(Result[13]),
        .I3(Result[12]),
        .O(Zero_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_5
       (.I0(Result[9]),
        .I1(Result[8]),
        .I2(Result[11]),
        .I3(Result[10]),
        .O(Zero_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Zero_INST_0_i_6
       (.I0(Zero_INST_0_i_9_n_0),
        .I1(Result[6]),
        .I2(Result[7]),
        .I3(Zero_INST_0_i_10_n_0),
        .I4(Result[0]),
        .I5(Result[1]),
        .O(Zero_INST_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_7
       (.I0(\Result[28]_INST_0_i_3_n_0 ),
        .I1(Zero_INST_0_i_11_n_0),
        .I2(\Result[29]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(Zero_INST_0_i_12_n_0),
        .O(Zero_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    Zero_INST_0_i_8
       (.I0(\Result[26]_INST_0_i_3_n_0 ),
        .I1(Zero_INST_0_i_13_n_0),
        .I2(\Result[27]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(Zero_INST_0_i_14_n_0),
        .O(Zero_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_9
       (.I0(\Result[4]_INST_0_i_3_n_0 ),
        .I1(Zero_INST_0_i_15_n_0),
        .I2(\Result[5]_INST_0_i_3_n_0 ),
        .I3(ALUControl[2]),
        .I4(Zero_INST_0_i_16_n_0),
        .O(Zero_INST_0_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(A[7]),
        .I1(B[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(A[6]),
        .I1(B[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(A[5]),
        .I1(B[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(A[4]),
        .I1(B[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(A[11]),
        .I1(B[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(A[10]),
        .I1(B[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(A[9]),
        .I1(B[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(A[8]),
        .I1(B[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(A[14]),
        .I1(B[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(A[13]),
        .I1(B[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(A[12]),
        .I1(B[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(A[19]),
        .I1(B[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(A[18]),
        .I1(B[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(A[17]),
        .I1(B[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(A[16]),
        .I1(B[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(A[23]),
        .I1(B[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(A[22]),
        .I1(B[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(A[21]),
        .I1(B[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(A[20]),
        .I1(B[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(A[27]),
        .I1(B[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(A[26]),
        .I1(B[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(A[25]),
        .I1(B[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(A[24]),
        .I1(B[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(A[31]),
        .I1(B[31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(A[30]),
        .I1(B[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(A[29]),
        .I1(B[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(A[28]),
        .I1(B[28]),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(A[3]),
        .I1(B[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(A[2]),
        .I1(B[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(A[1]),
        .I1(B[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .O(i__carry_i_4_n_0));
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
