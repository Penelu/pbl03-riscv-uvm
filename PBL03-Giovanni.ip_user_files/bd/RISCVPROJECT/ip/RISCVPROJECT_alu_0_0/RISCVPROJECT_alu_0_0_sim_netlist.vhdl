-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:19 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_alu_0_0/RISCVPROJECT_alu_0_0_sim_netlist.vhdl
-- Design      : RISCVPROJECT_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_alu_0_0_alu is
  port (
    Zero : out STD_LOGIC;
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LessSigned : out STD_LOGIC;
    LessUnsigned : out STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISCVPROJECT_alu_0_0_alu : entity is "alu";
end RISCVPROJECT_alu_0_0_alu;

architecture STRUCTURE of RISCVPROJECT_alu_0_0_alu is
  signal \^lesssigned\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__0_n_1\ : STD_LOGIC;
  signal \LessSigned_carry__0_n_2\ : STD_LOGIC;
  signal \LessSigned_carry__0_n_3\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__1_n_1\ : STD_LOGIC;
  signal \LessSigned_carry__1_n_2\ : STD_LOGIC;
  signal \LessSigned_carry__1_n_3\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \LessSigned_carry__2_n_1\ : STD_LOGIC;
  signal \LessSigned_carry__2_n_2\ : STD_LOGIC;
  signal \LessSigned_carry__2_n_3\ : STD_LOGIC;
  signal LessSigned_carry_i_1_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_2_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_3_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_4_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_5_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_6_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_7_n_0 : STD_LOGIC;
  signal LessSigned_carry_i_8_n_0 : STD_LOGIC;
  signal LessSigned_carry_n_0 : STD_LOGIC;
  signal LessSigned_carry_n_1 : STD_LOGIC;
  signal LessSigned_carry_n_2 : STD_LOGIC;
  signal LessSigned_carry_n_3 : STD_LOGIC;
  signal \LessUnsigned_carry__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry__0_n_1\ : STD_LOGIC;
  signal \LessUnsigned_carry__0_n_2\ : STD_LOGIC;
  signal \LessUnsigned_carry__0_n_3\ : STD_LOGIC;
  signal \LessUnsigned_carry__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry__1_n_1\ : STD_LOGIC;
  signal \LessUnsigned_carry__1_n_2\ : STD_LOGIC;
  signal \LessUnsigned_carry__1_n_3\ : STD_LOGIC;
  signal \LessUnsigned_carry__2_n_1\ : STD_LOGIC;
  signal \LessUnsigned_carry__2_n_2\ : STD_LOGIC;
  signal \LessUnsigned_carry__2_n_3\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_1__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_1_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_2__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_2_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_3__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_3_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_4__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_4_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_5__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_5_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_6__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_6_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_7__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_7_n_0 : STD_LOGIC;
  signal \LessUnsigned_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \LessUnsigned_carry_i_8__2_n_0\ : STD_LOGIC;
  signal LessUnsigned_carry_i_8_n_0 : STD_LOGIC;
  signal LessUnsigned_carry_n_0 : STD_LOGIC;
  signal LessUnsigned_carry_n_1 : STD_LOGIC;
  signal LessUnsigned_carry_n_2 : STD_LOGIC;
  signal LessUnsigned_carry_n_3 : STD_LOGIC;
  signal \^result\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Result0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_0\ : STD_LOGIC;
  signal \Result0_carry__0_n_1\ : STD_LOGIC;
  signal \Result0_carry__0_n_2\ : STD_LOGIC;
  signal \Result0_carry__0_n_3\ : STD_LOGIC;
  signal \Result0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_n_0\ : STD_LOGIC;
  signal \Result0_carry__1_n_1\ : STD_LOGIC;
  signal \Result0_carry__1_n_2\ : STD_LOGIC;
  signal \Result0_carry__1_n_3\ : STD_LOGIC;
  signal \Result0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_n_0\ : STD_LOGIC;
  signal \Result0_carry__2_n_1\ : STD_LOGIC;
  signal \Result0_carry__2_n_2\ : STD_LOGIC;
  signal \Result0_carry__2_n_3\ : STD_LOGIC;
  signal \Result0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_n_0\ : STD_LOGIC;
  signal \Result0_carry__3_n_1\ : STD_LOGIC;
  signal \Result0_carry__3_n_2\ : STD_LOGIC;
  signal \Result0_carry__3_n_3\ : STD_LOGIC;
  signal \Result0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_n_0\ : STD_LOGIC;
  signal \Result0_carry__4_n_1\ : STD_LOGIC;
  signal \Result0_carry__4_n_2\ : STD_LOGIC;
  signal \Result0_carry__4_n_3\ : STD_LOGIC;
  signal \Result0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_n_0\ : STD_LOGIC;
  signal \Result0_carry__5_n_1\ : STD_LOGIC;
  signal \Result0_carry__5_n_2\ : STD_LOGIC;
  signal \Result0_carry__5_n_3\ : STD_LOGIC;
  signal \Result0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \Result0_carry__6_n_1\ : STD_LOGIC;
  signal \Result0_carry__6_n_2\ : STD_LOGIC;
  signal \Result0_carry__6_n_3\ : STD_LOGIC;
  signal Result0_carry_i_1_n_0 : STD_LOGIC;
  signal Result0_carry_i_2_n_0 : STD_LOGIC;
  signal Result0_carry_i_3_n_0 : STD_LOGIC;
  signal Result0_carry_i_4_n_0 : STD_LOGIC;
  signal Result0_carry_n_0 : STD_LOGIC;
  signal Result0_carry_n_1 : STD_LOGIC;
  signal Result0_carry_n_2 : STD_LOGIC;
  signal Result0_carry_n_3 : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \Result0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \Result[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \Result[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \Result[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \Result[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal Zero_INST_0_i_10_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_11_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_12_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_13_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_14_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_15_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_16_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_17_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_18_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_19_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_1_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_20_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_21_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_22_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_23_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_24_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_25_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_26_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_2_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_3_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_4_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_5_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_6_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_7_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_8_n_0 : STD_LOGIC;
  signal Zero_INST_0_i_9_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal NLW_LessSigned_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessSigned_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessSigned_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessSigned_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LessUnsigned_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessUnsigned_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessUnsigned_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_LessUnsigned_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Result0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of LessSigned_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessSigned_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessSigned_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessSigned_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of LessUnsigned_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessUnsigned_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessUnsigned_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \LessUnsigned_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of Result0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \Result0_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Result[10]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Result[10]_INST_0_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Result[11]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Result[12]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Result[13]_INST_0_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Result[14]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Result[15]_INST_0_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Result[15]_INST_0_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Result[16]_INST_0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Result[16]_INST_0_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Result[16]_INST_0_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Result[17]_INST_0_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Result[17]_INST_0_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Result[17]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Result[18]_INST_0_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Result[18]_INST_0_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Result[18]_INST_0_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Result[19]_INST_0_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Result[19]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Result[19]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Result[20]_INST_0_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Result[20]_INST_0_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Result[21]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Result[21]_INST_0_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Result[22]_INST_0_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Result[22]_INST_0_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Result[23]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Result[23]_INST_0_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Result[24]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Result[24]_INST_0_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Result[25]_INST_0_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Result[25]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Result[26]_INST_0_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Result[27]_INST_0_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Result[28]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Result[29]_INST_0_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Result[29]_INST_0_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Result[2]_INST_0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Result[3]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Result[4]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_16\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Result[5]_INST_0_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Result[7]_INST_0_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Result[8]_INST_0_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Result[9]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Result[9]_INST_0_i_6\ : label is "soft_lutpair9";
begin
  LessSigned <= \^lesssigned\;
  Result(31 downto 0) <= \^result\(31 downto 0);
LessSigned_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => LessSigned_carry_n_0,
      CO(2) => LessSigned_carry_n_1,
      CO(1) => LessSigned_carry_n_2,
      CO(0) => LessSigned_carry_n_3,
      CYINIT => '0',
      DI(3) => LessSigned_carry_i_1_n_0,
      DI(2) => LessSigned_carry_i_2_n_0,
      DI(1) => LessSigned_carry_i_3_n_0,
      DI(0) => LessSigned_carry_i_4_n_0,
      O(3 downto 0) => NLW_LessSigned_carry_O_UNCONNECTED(3 downto 0),
      S(3) => LessSigned_carry_i_5_n_0,
      S(2) => LessSigned_carry_i_6_n_0,
      S(1) => LessSigned_carry_i_7_n_0,
      S(0) => LessSigned_carry_i_8_n_0
    );
\LessSigned_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => LessSigned_carry_n_0,
      CO(3) => \LessSigned_carry__0_n_0\,
      CO(2) => \LessSigned_carry__0_n_1\,
      CO(1) => \LessSigned_carry__0_n_2\,
      CO(0) => \LessSigned_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \LessSigned_carry__0_i_1_n_0\,
      DI(2) => \LessSigned_carry__0_i_2_n_0\,
      DI(1) => \LessSigned_carry__0_i_3_n_0\,
      DI(0) => \LessSigned_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_LessSigned_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessSigned_carry__0_i_5_n_0\,
      S(2) => \LessSigned_carry__0_i_6_n_0\,
      S(1) => \LessSigned_carry__0_i_7_n_0\,
      S(0) => \LessSigned_carry__0_i_8_n_0\
    );
\LessSigned_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => A(15),
      I3 => B(15),
      O => \LessSigned_carry__0_i_1_n_0\
    );
\LessSigned_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => A(13),
      I3 => B(13),
      O => \LessSigned_carry__0_i_2_n_0\
    );
\LessSigned_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => A(11),
      I3 => B(11),
      O => \LessSigned_carry__0_i_3_n_0\
    );
\LessSigned_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => A(9),
      I3 => B(9),
      O => \LessSigned_carry__0_i_4_n_0\
    );
\LessSigned_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => B(15),
      I3 => A(15),
      O => \LessSigned_carry__0_i_5_n_0\
    );
\LessSigned_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => B(13),
      I3 => A(13),
      O => \LessSigned_carry__0_i_6_n_0\
    );
\LessSigned_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => B(11),
      I3 => A(11),
      O => \LessSigned_carry__0_i_7_n_0\
    );
\LessSigned_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => B(9),
      I3 => A(9),
      O => \LessSigned_carry__0_i_8_n_0\
    );
\LessSigned_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LessSigned_carry__0_n_0\,
      CO(3) => \LessSigned_carry__1_n_0\,
      CO(2) => \LessSigned_carry__1_n_1\,
      CO(1) => \LessSigned_carry__1_n_2\,
      CO(0) => \LessSigned_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \LessSigned_carry__1_i_1_n_0\,
      DI(2) => \LessSigned_carry__1_i_2_n_0\,
      DI(1) => \LessSigned_carry__1_i_3_n_0\,
      DI(0) => \LessSigned_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_LessSigned_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessSigned_carry__1_i_5_n_0\,
      S(2) => \LessSigned_carry__1_i_6_n_0\,
      S(1) => \LessSigned_carry__1_i_7_n_0\,
      S(0) => \LessSigned_carry__1_i_8_n_0\
    );
\LessSigned_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => A(23),
      I3 => B(23),
      O => \LessSigned_carry__1_i_1_n_0\
    );
\LessSigned_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => A(21),
      I3 => B(21),
      O => \LessSigned_carry__1_i_2_n_0\
    );
\LessSigned_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => A(19),
      I3 => B(19),
      O => \LessSigned_carry__1_i_3_n_0\
    );
\LessSigned_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      I2 => A(17),
      I3 => B(17),
      O => \LessSigned_carry__1_i_4_n_0\
    );
\LessSigned_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => B(23),
      I3 => A(23),
      O => \LessSigned_carry__1_i_5_n_0\
    );
\LessSigned_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => B(21),
      I3 => A(21),
      O => \LessSigned_carry__1_i_6_n_0\
    );
\LessSigned_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => B(19),
      I3 => A(19),
      O => \LessSigned_carry__1_i_7_n_0\
    );
\LessSigned_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      I2 => B(17),
      I3 => A(17),
      O => \LessSigned_carry__1_i_8_n_0\
    );
\LessSigned_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \LessSigned_carry__1_n_0\,
      CO(3) => \^lesssigned\,
      CO(2) => \LessSigned_carry__2_n_1\,
      CO(1) => \LessSigned_carry__2_n_2\,
      CO(0) => \LessSigned_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \LessSigned_carry__2_i_1_n_0\,
      DI(2) => \LessSigned_carry__2_i_2_n_0\,
      DI(1) => \LessSigned_carry__2_i_3_n_0\,
      DI(0) => \LessSigned_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_LessSigned_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessSigned_carry__2_i_5_n_0\,
      S(2) => \LessSigned_carry__2_i_6_n_0\,
      S(1) => \LessSigned_carry__2_i_7_n_0\,
      S(0) => \LessSigned_carry__2_i_8_n_0\
    );
\LessSigned_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => B(31),
      I3 => A(31),
      O => \LessSigned_carry__2_i_1_n_0\
    );
\LessSigned_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => A(29),
      I3 => B(29),
      O => \LessSigned_carry__2_i_2_n_0\
    );
\LessSigned_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => A(27),
      I3 => B(27),
      O => \LessSigned_carry__2_i_3_n_0\
    );
\LessSigned_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => A(25),
      I3 => B(25),
      O => \LessSigned_carry__2_i_4_n_0\
    );
\LessSigned_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => B(31),
      I3 => A(31),
      O => \LessSigned_carry__2_i_5_n_0\
    );
\LessSigned_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => B(29),
      I3 => A(29),
      O => \LessSigned_carry__2_i_6_n_0\
    );
\LessSigned_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => B(27),
      I3 => A(27),
      O => \LessSigned_carry__2_i_7_n_0\
    );
\LessSigned_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => B(25),
      I3 => A(25),
      O => \LessSigned_carry__2_i_8_n_0\
    );
LessSigned_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => A(7),
      I3 => B(7),
      O => LessSigned_carry_i_1_n_0
    );
LessSigned_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => A(5),
      I3 => B(5),
      O => LessSigned_carry_i_2_n_0
    );
LessSigned_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => A(3),
      I3 => B(3),
      O => LessSigned_carry_i_3_n_0
    );
LessSigned_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      O => LessSigned_carry_i_4_n_0
    );
LessSigned_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => B(7),
      I3 => A(7),
      O => LessSigned_carry_i_5_n_0
    );
LessSigned_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => B(5),
      I3 => A(5),
      O => LessSigned_carry_i_6_n_0
    );
LessSigned_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(3),
      I3 => A(3),
      O => LessSigned_carry_i_7_n_0
    );
LessSigned_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => B(1),
      I3 => A(1),
      O => LessSigned_carry_i_8_n_0
    );
LessUnsigned_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => LessUnsigned_carry_n_0,
      CO(2) => LessUnsigned_carry_n_1,
      CO(1) => LessUnsigned_carry_n_2,
      CO(0) => LessUnsigned_carry_n_3,
      CYINIT => '0',
      DI(3) => LessUnsigned_carry_i_1_n_0,
      DI(2) => LessUnsigned_carry_i_2_n_0,
      DI(1) => LessUnsigned_carry_i_3_n_0,
      DI(0) => LessUnsigned_carry_i_4_n_0,
      O(3 downto 0) => NLW_LessUnsigned_carry_O_UNCONNECTED(3 downto 0),
      S(3) => LessUnsigned_carry_i_5_n_0,
      S(2) => LessUnsigned_carry_i_6_n_0,
      S(1) => LessUnsigned_carry_i_7_n_0,
      S(0) => LessUnsigned_carry_i_8_n_0
    );
\LessUnsigned_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => LessUnsigned_carry_n_0,
      CO(3) => \LessUnsigned_carry__0_n_0\,
      CO(2) => \LessUnsigned_carry__0_n_1\,
      CO(1) => \LessUnsigned_carry__0_n_2\,
      CO(0) => \LessUnsigned_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \LessUnsigned_carry_i_1__0_n_0\,
      DI(2) => \LessUnsigned_carry_i_2__0_n_0\,
      DI(1) => \LessUnsigned_carry_i_3__0_n_0\,
      DI(0) => \LessUnsigned_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_LessUnsigned_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessUnsigned_carry_i_5__0_n_0\,
      S(2) => \LessUnsigned_carry_i_6__0_n_0\,
      S(1) => \LessUnsigned_carry_i_7__0_n_0\,
      S(0) => \LessUnsigned_carry_i_8__0_n_0\
    );
\LessUnsigned_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LessUnsigned_carry__0_n_0\,
      CO(3) => \LessUnsigned_carry__1_n_0\,
      CO(2) => \LessUnsigned_carry__1_n_1\,
      CO(1) => \LessUnsigned_carry__1_n_2\,
      CO(0) => \LessUnsigned_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \LessUnsigned_carry_i_1__1_n_0\,
      DI(2) => \LessUnsigned_carry_i_2__1_n_0\,
      DI(1) => \LessUnsigned_carry_i_3__1_n_0\,
      DI(0) => \LessUnsigned_carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_LessUnsigned_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessUnsigned_carry_i_5__1_n_0\,
      S(2) => \LessUnsigned_carry_i_6__1_n_0\,
      S(1) => \LessUnsigned_carry_i_7__1_n_0\,
      S(0) => \LessUnsigned_carry_i_8__1_n_0\
    );
\LessUnsigned_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \LessUnsigned_carry__1_n_0\,
      CO(3) => LessUnsigned,
      CO(2) => \LessUnsigned_carry__2_n_1\,
      CO(1) => \LessUnsigned_carry__2_n_2\,
      CO(0) => \LessUnsigned_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \LessUnsigned_carry_i_1__2_n_0\,
      DI(2) => \LessUnsigned_carry_i_2__2_n_0\,
      DI(1) => \LessUnsigned_carry_i_3__2_n_0\,
      DI(0) => \LessUnsigned_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_LessUnsigned_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \LessUnsigned_carry_i_5__2_n_0\,
      S(2) => \LessUnsigned_carry_i_6__2_n_0\,
      S(1) => \LessUnsigned_carry_i_7__2_n_0\,
      S(0) => \LessUnsigned_carry_i_8__2_n_0\
    );
LessUnsigned_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => A(7),
      I3 => B(7),
      O => LessUnsigned_carry_i_1_n_0
    );
\LessUnsigned_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => A(15),
      I3 => B(15),
      O => \LessUnsigned_carry_i_1__0_n_0\
    );
\LessUnsigned_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => A(23),
      I3 => B(23),
      O => \LessUnsigned_carry_i_1__1_n_0\
    );
\LessUnsigned_carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => A(31),
      I3 => B(31),
      O => \LessUnsigned_carry_i_1__2_n_0\
    );
LessUnsigned_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => A(5),
      I3 => B(5),
      O => LessUnsigned_carry_i_2_n_0
    );
\LessUnsigned_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => A(13),
      I3 => B(13),
      O => \LessUnsigned_carry_i_2__0_n_0\
    );
\LessUnsigned_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => A(21),
      I3 => B(21),
      O => \LessUnsigned_carry_i_2__1_n_0\
    );
\LessUnsigned_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => A(29),
      I3 => B(29),
      O => \LessUnsigned_carry_i_2__2_n_0\
    );
LessUnsigned_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => A(3),
      I3 => B(3),
      O => LessUnsigned_carry_i_3_n_0
    );
\LessUnsigned_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => A(11),
      I3 => B(11),
      O => \LessUnsigned_carry_i_3__0_n_0\
    );
\LessUnsigned_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => A(19),
      I3 => B(19),
      O => \LessUnsigned_carry_i_3__1_n_0\
    );
\LessUnsigned_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => A(27),
      I3 => B(27),
      O => \LessUnsigned_carry_i_3__2_n_0\
    );
LessUnsigned_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => A(1),
      I3 => B(1),
      O => LessUnsigned_carry_i_4_n_0
    );
\LessUnsigned_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => A(9),
      I3 => B(9),
      O => \LessUnsigned_carry_i_4__0_n_0\
    );
\LessUnsigned_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      I2 => A(17),
      I3 => B(17),
      O => \LessUnsigned_carry_i_4__1_n_0\
    );
\LessUnsigned_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => A(25),
      I3 => B(25),
      O => \LessUnsigned_carry_i_4__2_n_0\
    );
LessUnsigned_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => B(7),
      I3 => A(7),
      O => LessUnsigned_carry_i_5_n_0
    );
\LessUnsigned_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => B(15),
      I3 => A(15),
      O => \LessUnsigned_carry_i_5__0_n_0\
    );
\LessUnsigned_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => B(23),
      I3 => A(23),
      O => \LessUnsigned_carry_i_5__1_n_0\
    );
\LessUnsigned_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => B(31),
      I3 => A(31),
      O => \LessUnsigned_carry_i_5__2_n_0\
    );
LessUnsigned_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => B(5),
      I3 => A(5),
      O => LessUnsigned_carry_i_6_n_0
    );
\LessUnsigned_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => B(13),
      I3 => A(13),
      O => \LessUnsigned_carry_i_6__0_n_0\
    );
\LessUnsigned_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => B(21),
      I3 => A(21),
      O => \LessUnsigned_carry_i_6__1_n_0\
    );
\LessUnsigned_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => B(29),
      I3 => A(29),
      O => \LessUnsigned_carry_i_6__2_n_0\
    );
LessUnsigned_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(3),
      I3 => A(3),
      O => LessUnsigned_carry_i_7_n_0
    );
\LessUnsigned_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => B(11),
      I3 => A(11),
      O => \LessUnsigned_carry_i_7__0_n_0\
    );
\LessUnsigned_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => B(19),
      I3 => A(19),
      O => \LessUnsigned_carry_i_7__1_n_0\
    );
\LessUnsigned_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => B(27),
      I3 => A(27),
      O => \LessUnsigned_carry_i_7__2_n_0\
    );
LessUnsigned_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => B(1),
      I3 => A(1),
      O => LessUnsigned_carry_i_8_n_0
    );
\LessUnsigned_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => B(9),
      I3 => A(9),
      O => \LessUnsigned_carry_i_8__0_n_0\
    );
\LessUnsigned_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      I2 => B(17),
      I3 => A(17),
      O => \LessUnsigned_carry_i_8__1_n_0\
    );
\LessUnsigned_carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => B(25),
      I3 => A(25),
      O => \LessUnsigned_carry_i_8__2_n_0\
    );
Result0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Result0_carry_n_0,
      CO(2) => Result0_carry_n_1,
      CO(1) => Result0_carry_n_2,
      CO(0) => Result0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => Result0_carry_i_1_n_0,
      S(2) => Result0_carry_i_2_n_0,
      S(1) => Result0_carry_i_3_n_0,
      S(0) => Result0_carry_i_4_n_0
    );
\Result0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Result0_carry_n_0,
      CO(3) => \Result0_carry__0_n_0\,
      CO(2) => \Result0_carry__0_n_1\,
      CO(1) => \Result0_carry__0_n_2\,
      CO(0) => \Result0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \Result0_carry__0_i_1_n_0\,
      S(2) => \Result0_carry__0_i_2_n_0\,
      S(1) => \Result0_carry__0_i_3_n_0\,
      S(0) => \Result0_carry__0_i_4_n_0\
    );
\Result0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \Result0_carry__0_i_1_n_0\
    );
\Result0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => \Result0_carry__0_i_2_n_0\
    );
\Result0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \Result0_carry__0_i_3_n_0\
    );
\Result0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => \Result0_carry__0_i_4_n_0\
    );
\Result0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__0_n_0\,
      CO(3) => \Result0_carry__1_n_0\,
      CO(2) => \Result0_carry__1_n_1\,
      CO(1) => \Result0_carry__1_n_2\,
      CO(0) => \Result0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \Result0_carry__1_i_1_n_0\,
      S(2) => \Result0_carry__1_i_2_n_0\,
      S(1) => \Result0_carry__1_i_3_n_0\,
      S(0) => \Result0_carry__1_i_4_n_0\
    );
\Result0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \Result0_carry__1_i_1_n_0\
    );
\Result0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => \Result0_carry__1_i_2_n_0\
    );
\Result0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => \Result0_carry__1_i_3_n_0\
    );
\Result0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => \Result0_carry__1_i_4_n_0\
    );
\Result0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__1_n_0\,
      CO(3) => \Result0_carry__2_n_0\,
      CO(2) => \Result0_carry__2_n_1\,
      CO(1) => \Result0_carry__2_n_2\,
      CO(0) => \Result0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \Result0_carry__2_i_1_n_0\,
      S(2) => \Result0_carry__2_i_2_n_0\,
      S(1) => \Result0_carry__2_i_3_n_0\,
      S(0) => \Result0_carry__2_i_4_n_0\
    );
\Result0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \Result0_carry__2_i_1_n_0\
    );
\Result0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \Result0_carry__2_i_2_n_0\
    );
\Result0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \Result0_carry__2_i_3_n_0\
    );
\Result0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \Result0_carry__2_i_4_n_0\
    );
\Result0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__2_n_0\,
      CO(3) => \Result0_carry__3_n_0\,
      CO(2) => \Result0_carry__3_n_1\,
      CO(1) => \Result0_carry__3_n_2\,
      CO(0) => \Result0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3 downto 0) => data0(19 downto 16),
      S(3) => \Result0_carry__3_i_1_n_0\,
      S(2) => \Result0_carry__3_i_2_n_0\,
      S(1) => \Result0_carry__3_i_3_n_0\,
      S(0) => \Result0_carry__3_i_4_n_0\
    );
\Result0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => \Result0_carry__3_i_1_n_0\
    );
\Result0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => \Result0_carry__3_i_2_n_0\
    );
\Result0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => \Result0_carry__3_i_3_n_0\
    );
\Result0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => \Result0_carry__3_i_4_n_0\
    );
\Result0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__3_n_0\,
      CO(3) => \Result0_carry__4_n_0\,
      CO(2) => \Result0_carry__4_n_1\,
      CO(1) => \Result0_carry__4_n_2\,
      CO(0) => \Result0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3 downto 0) => data0(23 downto 20),
      S(3) => \Result0_carry__4_i_1_n_0\,
      S(2) => \Result0_carry__4_i_2_n_0\,
      S(1) => \Result0_carry__4_i_3_n_0\,
      S(0) => \Result0_carry__4_i_4_n_0\
    );
\Result0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => \Result0_carry__4_i_1_n_0\
    );
\Result0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => \Result0_carry__4_i_2_n_0\
    );
\Result0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => \Result0_carry__4_i_3_n_0\
    );
\Result0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => \Result0_carry__4_i_4_n_0\
    );
\Result0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__4_n_0\,
      CO(3) => \Result0_carry__5_n_0\,
      CO(2) => \Result0_carry__5_n_1\,
      CO(1) => \Result0_carry__5_n_2\,
      CO(0) => \Result0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3 downto 0) => data0(27 downto 24),
      S(3) => \Result0_carry__5_i_1_n_0\,
      S(2) => \Result0_carry__5_i_2_n_0\,
      S(1) => \Result0_carry__5_i_3_n_0\,
      S(0) => \Result0_carry__5_i_4_n_0\
    );
\Result0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => \Result0_carry__5_i_1_n_0\
    );
\Result0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => \Result0_carry__5_i_2_n_0\
    );
\Result0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => \Result0_carry__5_i_3_n_0\
    );
\Result0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => \Result0_carry__5_i_4_n_0\
    );
\Result0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_carry__5_n_0\,
      CO(3) => \NLW_Result0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \Result0_carry__6_n_1\,
      CO(1) => \Result0_carry__6_n_2\,
      CO(0) => \Result0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(30 downto 28),
      O(3 downto 0) => data0(31 downto 28),
      S(3) => \Result0_carry__6_i_1_n_0\,
      S(2) => \Result0_carry__6_i_2_n_0\,
      S(1) => \Result0_carry__6_i_3_n_0\,
      S(0) => \Result0_carry__6_i_4_n_0\
    );
\Result0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => \Result0_carry__6_i_1_n_0\
    );
\Result0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => \Result0_carry__6_i_2_n_0\
    );
\Result0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => \Result0_carry__6_i_3_n_0\
    );
\Result0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => \Result0_carry__6_i_4_n_0\
    );
Result0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => Result0_carry_i_1_n_0
    );
Result0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => Result0_carry_i_2_n_0
    );
Result0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => Result0_carry_i_3_n_0
    );
Result0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => Result0_carry_i_4_n_0
    );
\Result0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Result0_inferred__0/i__carry_n_0\,
      CO(2) => \Result0_inferred__0/i__carry_n_1\,
      CO(1) => \Result0_inferred__0/i__carry_n_2\,
      CO(0) => \Result0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\Result0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__0_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__0_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__0_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\Result0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__0_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__1_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__1_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__1_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\Result0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__1_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__2_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__2_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__2_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\Result0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__2_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__3_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__3_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__3_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3 downto 0) => data1(19 downto 16),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\Result0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__3_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__4_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__4_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__4_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3 downto 0) => data1(23 downto 20),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\Result0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__4_n_0\,
      CO(3) => \Result0_inferred__0/i__carry__5_n_0\,
      CO(2) => \Result0_inferred__0/i__carry__5_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__5_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3 downto 0) => data1(27 downto 24),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\Result0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Result0_inferred__0/i__carry__5_n_0\,
      CO(3) => \NLW_Result0_inferred__0/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \Result0_inferred__0/i__carry__6_n_1\,
      CO(1) => \Result0_inferred__0/i__carry__6_n_2\,
      CO(0) => \Result0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(30 downto 28),
      O(3 downto 0) => data1(31 downto 28),
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\Result[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[0]_INST_0_i_1_n_0\,
      I1 => \Result[0]_INST_0_i_2_n_0\,
      O => \^result\(0),
      S => ALUControl(2)
    );
\Result[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => ALUControl(1),
      I3 => data1(0),
      I4 => ALUControl(0),
      I5 => data0(0),
      O => \Result[0]_INST_0_i_1_n_0\
    );
\Result[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \Result[0]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => \^lesssigned\,
      I3 => ALUControl(0),
      I4 => B(0),
      I5 => A(0),
      O => \Result[0]_INST_0_i_2_n_0\
    );
\Result[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \Result[1]_INST_0_i_4_n_0\,
      I1 => \Result[0]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[1]_INST_0_i_5_n_0\,
      I4 => B(0),
      O => \Result[0]_INST_0_i_3_n_0\
    );
\Result[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_11_n_0\,
      I1 => \Result[2]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[4]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[0]_INST_0_i_5_n_0\,
      O => \Result[0]_INST_0_i_4_n_0\
    );
\Result[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(24),
      I1 => A(8),
      I2 => B(3),
      I3 => A(16),
      I4 => B(4),
      I5 => A(0),
      O => \Result[0]_INST_0_i_5_n_0\
    );
\Result[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[10]_INST_0_i_1_n_0\,
      I1 => \Result[10]_INST_0_i_2_n_0\,
      O => \^result\(10),
      S => ALUControl(2)
    );
\Result[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => ALUControl(1),
      I3 => data1(10),
      I4 => ALUControl(0),
      I5 => data0(10),
      O => \Result[10]_INST_0_i_1_n_0\
    );
\Result[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[10]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(10),
      I3 => B(10),
      I4 => ALUControl(0),
      O => \Result[10]_INST_0_i_2_n_0\
    );
\Result[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[11]_INST_0_i_4_n_0\,
      I1 => \Result[10]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[10]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[11]_INST_0_i_5_n_0\,
      O => \Result[10]_INST_0_i_3_n_0\
    );
\Result[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[16]_INST_0_i_7_n_0\,
      I1 => \Result[5]_INST_0_i_8_n_0\,
      I2 => B(1),
      I3 => \Result[14]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_10_n_0\,
      O => \Result[10]_INST_0_i_4_n_0\
    );
\Result[10]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[10]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[12]_INST_0_i_6_n_0\,
      O => \Result[10]_INST_0_i_5_n_0\
    );
\Result[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(3),
      I1 => B(2),
      I2 => B(4),
      I3 => A(7),
      I4 => B(3),
      O => \Result[10]_INST_0_i_6_n_0\
    );
\Result[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[11]_INST_0_i_1_n_0\,
      I1 => \Result[11]_INST_0_i_2_n_0\,
      O => \^result\(11),
      S => ALUControl(2)
    );
\Result[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => ALUControl(1),
      I3 => data1(11),
      I4 => ALUControl(0),
      I5 => data0(11),
      O => \Result[11]_INST_0_i_1_n_0\
    );
\Result[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[11]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(11),
      I3 => B(11),
      I4 => ALUControl(0),
      O => \Result[11]_INST_0_i_2_n_0\
    );
\Result[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[12]_INST_0_i_4_n_0\,
      I1 => \Result[11]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[11]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[12]_INST_0_i_5_n_0\,
      O => \Result[11]_INST_0_i_3_n_0\
    );
\Result[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[17]_INST_0_i_7_n_0\,
      I1 => \Result[13]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[15]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_12_n_0\,
      O => \Result[11]_INST_0_i_4_n_0\
    );
\Result[11]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[11]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[13]_INST_0_i_7_n_0\,
      O => \Result[11]_INST_0_i_5_n_0\
    );
\Result[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(4),
      I1 => B(2),
      I2 => A(0),
      I3 => B(3),
      I4 => A(8),
      I5 => B(4),
      O => \Result[11]_INST_0_i_6_n_0\
    );
\Result[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[12]_INST_0_i_1_n_0\,
      I1 => \Result[12]_INST_0_i_2_n_0\,
      O => \^result\(12),
      S => ALUControl(2)
    );
\Result[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => ALUControl(1),
      I3 => data1(12),
      I4 => ALUControl(0),
      I5 => data0(12),
      O => \Result[12]_INST_0_i_1_n_0\
    );
\Result[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[12]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(12),
      I3 => B(12),
      I4 => ALUControl(0),
      O => \Result[12]_INST_0_i_2_n_0\
    );
\Result[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[13]_INST_0_i_4_n_0\,
      I1 => \Result[12]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[12]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[13]_INST_0_i_5_n_0\,
      O => \Result[12]_INST_0_i_3_n_0\
    );
\Result[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[18]_INST_0_i_7_n_0\,
      I1 => \Result[14]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[16]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_8_n_0\,
      O => \Result[12]_INST_0_i_4_n_0\
    );
\Result[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[12]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[14]_INST_0_i_7_n_0\,
      O => \Result[12]_INST_0_i_5_n_0\
    );
\Result[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(5),
      I1 => B(2),
      I2 => A(1),
      I3 => B(3),
      I4 => A(9),
      I5 => B(4),
      O => \Result[12]_INST_0_i_6_n_0\
    );
\Result[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[13]_INST_0_i_1_n_0\,
      I1 => \Result[13]_INST_0_i_2_n_0\,
      O => \^result\(13),
      S => ALUControl(2)
    );
\Result[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      I2 => ALUControl(1),
      I3 => data1(13),
      I4 => ALUControl(0),
      I5 => data0(13),
      O => \Result[13]_INST_0_i_1_n_0\
    );
\Result[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[13]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(13),
      I3 => B(13),
      I4 => ALUControl(0),
      O => \Result[13]_INST_0_i_2_n_0\
    );
\Result[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[14]_INST_0_i_4_n_0\,
      I1 => \Result[13]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[13]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[14]_INST_0_i_5_n_0\,
      O => \Result[13]_INST_0_i_3_n_0\
    );
\Result[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[19]_INST_0_i_7_n_0\,
      I1 => \Result[15]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[17]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[13]_INST_0_i_6_n_0\,
      O => \Result[13]_INST_0_i_4_n_0\
    );
\Result[13]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Result[13]_INST_0_i_7_n_0\,
      I1 => B(1),
      I2 => \Result[15]_INST_0_i_7_n_0\,
      I3 => B(2),
      I4 => \Result[19]_INST_0_i_8_n_0\,
      O => \Result[13]_INST_0_i_5_n_0\
    );
\Result[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(21),
      I1 => B(3),
      I2 => A(29),
      I3 => B(4),
      I4 => A(13),
      O => \Result[13]_INST_0_i_6_n_0\
    );
\Result[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(6),
      I1 => B(2),
      I2 => A(2),
      I3 => B(3),
      I4 => A(10),
      I5 => B(4),
      O => \Result[13]_INST_0_i_7_n_0\
    );
\Result[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[14]_INST_0_i_1_n_0\,
      I1 => \Result[14]_INST_0_i_2_n_0\,
      O => \^result\(14),
      S => ALUControl(2)
    );
\Result[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => ALUControl(1),
      I3 => data1(14),
      I4 => ALUControl(0),
      I5 => data0(14),
      O => \Result[14]_INST_0_i_1_n_0\
    );
\Result[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[14]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(14),
      I3 => B(14),
      I4 => ALUControl(0),
      O => \Result[14]_INST_0_i_2_n_0\
    );
\Result[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[15]_INST_0_i_4_n_0\,
      I1 => \Result[14]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[14]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[15]_INST_0_i_5_n_0\,
      O => \Result[14]_INST_0_i_3_n_0\
    );
\Result[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[16]_INST_0_i_6_n_0\,
      I1 => \Result[16]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[18]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[14]_INST_0_i_6_n_0\,
      O => \Result[14]_INST_0_i_4_n_0\
    );
\Result[14]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Result[14]_INST_0_i_7_n_0\,
      I1 => B(1),
      I2 => \Result[16]_INST_0_i_8_n_0\,
      I3 => B(2),
      I4 => \Result[20]_INST_0_i_7_n_0\,
      O => \Result[14]_INST_0_i_5_n_0\
    );
\Result[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(22),
      I1 => B(3),
      I2 => A(30),
      I3 => B(4),
      I4 => A(14),
      O => \Result[14]_INST_0_i_6_n_0\
    );
\Result[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(7),
      I1 => B(2),
      I2 => A(3),
      I3 => B(3),
      I4 => A(11),
      I5 => B(4),
      O => \Result[14]_INST_0_i_7_n_0\
    );
\Result[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[15]_INST_0_i_1_n_0\,
      I1 => \Result[15]_INST_0_i_2_n_0\,
      O => \^result\(15),
      S => ALUControl(2)
    );
\Result[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => ALUControl(1),
      I3 => data1(15),
      I4 => ALUControl(0),
      I5 => data0(15),
      O => \Result[15]_INST_0_i_1_n_0\
    );
\Result[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[15]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(15),
      I3 => B(15),
      I4 => ALUControl(0),
      O => \Result[15]_INST_0_i_2_n_0\
    );
\Result[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[16]_INST_0_i_4_n_0\,
      I1 => \Result[15]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[15]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[16]_INST_0_i_5_n_0\,
      O => \Result[15]_INST_0_i_3_n_0\
    );
\Result[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[17]_INST_0_i_6_n_0\,
      I1 => \Result[17]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[19]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[15]_INST_0_i_6_n_0\,
      O => \Result[15]_INST_0_i_4_n_0\
    );
\Result[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[15]_INST_0_i_7_n_0\,
      I1 => \Result[19]_INST_0_i_8_n_0\,
      I2 => B(1),
      I3 => \Result[17]_INST_0_i_8_n_0\,
      I4 => B(2),
      I5 => \Result[21]_INST_0_i_7_n_0\,
      O => \Result[15]_INST_0_i_5_n_0\
    );
\Result[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(23),
      I1 => B(3),
      I2 => A(31),
      I3 => B(4),
      I4 => A(15),
      O => \Result[15]_INST_0_i_6_n_0\
    );
\Result[15]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(0),
      I1 => B(3),
      I2 => A(8),
      I3 => B(4),
      O => \Result[15]_INST_0_i_7_n_0\
    );
\Result[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[16]_INST_0_i_1_n_0\,
      I1 => \Result[16]_INST_0_i_2_n_0\,
      O => \^result\(16),
      S => ALUControl(2)
    );
\Result[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      I2 => ALUControl(1),
      I3 => data1(16),
      I4 => ALUControl(0),
      I5 => data0(16),
      O => \Result[16]_INST_0_i_1_n_0\
    );
\Result[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[16]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(16),
      I3 => B(16),
      I4 => ALUControl(0),
      O => \Result[16]_INST_0_i_2_n_0\
    );
\Result[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[17]_INST_0_i_4_n_0\,
      I1 => \Result[16]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[16]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[17]_INST_0_i_5_n_0\,
      O => \Result[16]_INST_0_i_3_n_0\
    );
\Result[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[18]_INST_0_i_6_n_0\,
      I1 => \Result[18]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[16]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[16]_INST_0_i_7_n_0\,
      O => \Result[16]_INST_0_i_4_n_0\
    );
\Result[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[16]_INST_0_i_8_n_0\,
      I1 => \Result[20]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[18]_INST_0_i_8_n_0\,
      I4 => B(2),
      I5 => \Result[22]_INST_0_i_7_n_0\,
      O => \Result[16]_INST_0_i_5_n_0\
    );
\Result[16]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(28),
      I1 => B(3),
      I2 => A(20),
      I3 => B(4),
      O => \Result[16]_INST_0_i_6_n_0\
    );
\Result[16]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(24),
      I1 => B(3),
      I2 => A(16),
      I3 => B(4),
      O => \Result[16]_INST_0_i_7_n_0\
    );
\Result[16]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(1),
      I1 => B(3),
      I2 => A(9),
      I3 => B(4),
      O => \Result[16]_INST_0_i_8_n_0\
    );
\Result[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[17]_INST_0_i_1_n_0\,
      I1 => \Result[17]_INST_0_i_2_n_0\,
      O => \^result\(17),
      S => ALUControl(2)
    );
\Result[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      I2 => ALUControl(1),
      I3 => data1(17),
      I4 => ALUControl(0),
      I5 => data0(17),
      O => \Result[17]_INST_0_i_1_n_0\
    );
\Result[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[17]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(17),
      I3 => B(17),
      I4 => ALUControl(0),
      O => \Result[17]_INST_0_i_2_n_0\
    );
\Result[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[18]_INST_0_i_4_n_0\,
      I1 => \Result[17]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[17]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[18]_INST_0_i_5_n_0\,
      O => \Result[17]_INST_0_i_3_n_0\
    );
\Result[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[19]_INST_0_i_6_n_0\,
      I1 => \Result[19]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[17]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[17]_INST_0_i_7_n_0\,
      O => \Result[17]_INST_0_i_4_n_0\
    );
\Result[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[17]_INST_0_i_8_n_0\,
      I1 => \Result[21]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[19]_INST_0_i_8_n_0\,
      I4 => B(2),
      I5 => \Result[23]_INST_0_i_7_n_0\,
      O => \Result[17]_INST_0_i_5_n_0\
    );
\Result[17]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(29),
      I1 => B(3),
      I2 => A(21),
      I3 => B(4),
      O => \Result[17]_INST_0_i_6_n_0\
    );
\Result[17]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(25),
      I1 => B(3),
      I2 => A(17),
      I3 => B(4),
      O => \Result[17]_INST_0_i_7_n_0\
    );
\Result[17]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(2),
      I1 => B(3),
      I2 => A(10),
      I3 => B(4),
      O => \Result[17]_INST_0_i_8_n_0\
    );
\Result[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[18]_INST_0_i_1_n_0\,
      I1 => \Result[18]_INST_0_i_2_n_0\,
      O => \^result\(18),
      S => ALUControl(2)
    );
\Result[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      I2 => ALUControl(1),
      I3 => data1(18),
      I4 => ALUControl(0),
      I5 => data0(18),
      O => \Result[18]_INST_0_i_1_n_0\
    );
\Result[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[18]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(18),
      I3 => B(18),
      I4 => ALUControl(0),
      O => \Result[18]_INST_0_i_2_n_0\
    );
\Result[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[19]_INST_0_i_4_n_0\,
      I1 => \Result[18]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[18]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[19]_INST_0_i_5_n_0\,
      O => \Result[18]_INST_0_i_3_n_0\
    );
\Result[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Result[20]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[18]_INST_0_i_6_n_0\,
      I3 => B(2),
      I4 => \Result[18]_INST_0_i_7_n_0\,
      O => \Result[18]_INST_0_i_4_n_0\
    );
\Result[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[18]_INST_0_i_8_n_0\,
      I1 => \Result[22]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[20]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[24]_INST_0_i_7_n_0\,
      O => \Result[18]_INST_0_i_5_n_0\
    );
\Result[18]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(30),
      I1 => B(3),
      I2 => A(22),
      I3 => B(4),
      O => \Result[18]_INST_0_i_6_n_0\
    );
\Result[18]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(26),
      I1 => B(3),
      I2 => A(18),
      I3 => B(4),
      O => \Result[18]_INST_0_i_7_n_0\
    );
\Result[18]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => A(11),
      I3 => B(4),
      O => \Result[18]_INST_0_i_8_n_0\
    );
\Result[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[19]_INST_0_i_1_n_0\,
      I1 => \Result[19]_INST_0_i_2_n_0\,
      O => \^result\(19),
      S => ALUControl(2)
    );
\Result[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => ALUControl(1),
      I3 => data1(19),
      I4 => ALUControl(0),
      I5 => data0(19),
      O => \Result[19]_INST_0_i_1_n_0\
    );
\Result[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[19]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(19),
      I3 => B(19),
      I4 => ALUControl(0),
      O => \Result[19]_INST_0_i_2_n_0\
    );
\Result[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[20]_INST_0_i_4_n_0\,
      I1 => \Result[19]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[19]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[20]_INST_0_i_5_n_0\,
      O => \Result[19]_INST_0_i_3_n_0\
    );
\Result[19]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Result[21]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[19]_INST_0_i_6_n_0\,
      I3 => B(2),
      I4 => \Result[19]_INST_0_i_7_n_0\,
      O => \Result[19]_INST_0_i_4_n_0\
    );
\Result[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[19]_INST_0_i_8_n_0\,
      I1 => \Result[23]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[21]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[25]_INST_0_i_7_n_0\,
      O => \Result[19]_INST_0_i_5_n_0\
    );
\Result[19]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(31),
      I1 => B(3),
      I2 => A(23),
      I3 => B(4),
      O => \Result[19]_INST_0_i_6_n_0\
    );
\Result[19]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(27),
      I1 => B(3),
      I2 => A(19),
      I3 => B(4),
      O => \Result[19]_INST_0_i_7_n_0\
    );
\Result[19]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(4),
      I1 => B(3),
      I2 => A(12),
      I3 => B(4),
      O => \Result[19]_INST_0_i_8_n_0\
    );
\Result[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[1]_INST_0_i_1_n_0\,
      I1 => \Result[1]_INST_0_i_2_n_0\,
      O => \^result\(1),
      S => ALUControl(2)
    );
\Result[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      I2 => ALUControl(1),
      I3 => data1(1),
      I4 => ALUControl(0),
      I5 => data0(1),
      O => \Result[1]_INST_0_i_1_n_0\
    );
\Result[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[1]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(1),
      I3 => B(1),
      I4 => ALUControl(0),
      O => \Result[1]_INST_0_i_2_n_0\
    );
\Result[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[2]_INST_0_i_4_n_0\,
      I1 => \Result[1]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[1]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[2]_INST_0_i_5_n_0\,
      O => \Result[1]_INST_0_i_3_n_0\
    );
\Result[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_13_n_0\,
      I1 => \Result[3]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_15_n_0\,
      I4 => B(2),
      I5 => \Result[1]_INST_0_i_6_n_0\,
      O => \Result[1]_INST_0_i_4_n_0\
    );
\Result[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(0),
      I3 => B(3),
      I4 => B(1),
      O => \Result[1]_INST_0_i_5_n_0\
    );
\Result[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(25),
      I1 => A(9),
      I2 => B(3),
      I3 => A(17),
      I4 => B(4),
      I5 => A(1),
      O => \Result[1]_INST_0_i_6_n_0\
    );
\Result[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[20]_INST_0_i_1_n_0\,
      I1 => \Result[20]_INST_0_i_2_n_0\,
      O => \^result\(20),
      S => ALUControl(2)
    );
\Result[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      I2 => ALUControl(1),
      I3 => data1(20),
      I4 => ALUControl(0),
      I5 => data0(20),
      O => \Result[20]_INST_0_i_1_n_0\
    );
\Result[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[20]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(20),
      I3 => B(20),
      I4 => ALUControl(0),
      O => \Result[20]_INST_0_i_2_n_0\
    );
\Result[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[21]_INST_0_i_4_n_0\,
      I1 => \Result[20]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[20]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[21]_INST_0_i_5_n_0\,
      O => \Result[20]_INST_0_i_3_n_0\
    );
\Result[20]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[22]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[20]_INST_0_i_6_n_0\,
      O => \Result[20]_INST_0_i_4_n_0\
    );
\Result[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[20]_INST_0_i_7_n_0\,
      I1 => \Result[24]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[22]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[26]_INST_0_i_7_n_0\,
      O => \Result[20]_INST_0_i_5_n_0\
    );
\Result[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(24),
      I1 => B(2),
      I2 => A(28),
      I3 => B(3),
      I4 => A(20),
      I5 => B(4),
      O => \Result[20]_INST_0_i_6_n_0\
    );
\Result[20]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(5),
      I1 => B(3),
      I2 => A(13),
      I3 => B(4),
      O => \Result[20]_INST_0_i_7_n_0\
    );
\Result[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[21]_INST_0_i_1_n_0\,
      I1 => \Result[21]_INST_0_i_2_n_0\,
      O => \^result\(21),
      S => ALUControl(2)
    );
\Result[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => ALUControl(1),
      I3 => data1(21),
      I4 => ALUControl(0),
      I5 => data0(21),
      O => \Result[21]_INST_0_i_1_n_0\
    );
\Result[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[21]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(21),
      I3 => B(21),
      I4 => ALUControl(0),
      O => \Result[21]_INST_0_i_2_n_0\
    );
\Result[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[22]_INST_0_i_4_n_0\,
      I1 => \Result[21]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[21]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[22]_INST_0_i_5_n_0\,
      O => \Result[21]_INST_0_i_3_n_0\
    );
\Result[21]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[23]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[21]_INST_0_i_6_n_0\,
      O => \Result[21]_INST_0_i_4_n_0\
    );
\Result[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[21]_INST_0_i_7_n_0\,
      I1 => \Result[25]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[23]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[27]_INST_0_i_7_n_0\,
      O => \Result[21]_INST_0_i_5_n_0\
    );
\Result[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(25),
      I1 => B(2),
      I2 => A(29),
      I3 => B(3),
      I4 => A(21),
      I5 => B(4),
      O => \Result[21]_INST_0_i_6_n_0\
    );
\Result[21]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(6),
      I1 => B(3),
      I2 => A(14),
      I3 => B(4),
      O => \Result[21]_INST_0_i_7_n_0\
    );
\Result[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[22]_INST_0_i_1_n_0\,
      I1 => \Result[22]_INST_0_i_2_n_0\,
      O => \^result\(22),
      S => ALUControl(2)
    );
\Result[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      I2 => ALUControl(1),
      I3 => data1(22),
      I4 => ALUControl(0),
      I5 => data0(22),
      O => \Result[22]_INST_0_i_1_n_0\
    );
\Result[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[22]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(22),
      I3 => B(22),
      I4 => ALUControl(0),
      O => \Result[22]_INST_0_i_2_n_0\
    );
\Result[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[23]_INST_0_i_4_n_0\,
      I1 => \Result[22]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[22]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[23]_INST_0_i_5_n_0\,
      O => \Result[22]_INST_0_i_3_n_0\
    );
\Result[22]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[24]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[22]_INST_0_i_6_n_0\,
      O => \Result[22]_INST_0_i_4_n_0\
    );
\Result[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[22]_INST_0_i_7_n_0\,
      I1 => \Result[26]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[24]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[28]_INST_0_i_6_n_0\,
      O => \Result[22]_INST_0_i_5_n_0\
    );
\Result[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(26),
      I1 => B(2),
      I2 => A(30),
      I3 => B(3),
      I4 => A(22),
      I5 => B(4),
      O => \Result[22]_INST_0_i_6_n_0\
    );
\Result[22]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(7),
      I1 => B(3),
      I2 => A(15),
      I3 => B(4),
      O => \Result[22]_INST_0_i_7_n_0\
    );
\Result[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[23]_INST_0_i_1_n_0\,
      I1 => \Result[23]_INST_0_i_2_n_0\,
      O => \^result\(23),
      S => ALUControl(2)
    );
\Result[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => ALUControl(1),
      I3 => data1(23),
      I4 => ALUControl(0),
      I5 => data0(23),
      O => \Result[23]_INST_0_i_1_n_0\
    );
\Result[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[23]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(23),
      I3 => B(23),
      I4 => ALUControl(0),
      O => \Result[23]_INST_0_i_2_n_0\
    );
\Result[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[24]_INST_0_i_4_n_0\,
      I1 => \Result[23]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[23]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[24]_INST_0_i_5_n_0\,
      O => \Result[23]_INST_0_i_3_n_0\
    );
\Result[23]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[25]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[23]_INST_0_i_6_n_0\,
      O => \Result[23]_INST_0_i_4_n_0\
    );
\Result[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[23]_INST_0_i_7_n_0\,
      I1 => \Result[27]_INST_0_i_7_n_0\,
      I2 => B(1),
      I3 => \Result[25]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_8_n_0\,
      O => \Result[23]_INST_0_i_5_n_0\
    );
\Result[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => A(27),
      I1 => B(2),
      I2 => A(31),
      I3 => B(3),
      I4 => A(23),
      I5 => B(4),
      O => \Result[23]_INST_0_i_6_n_0\
    );
\Result[23]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(8),
      I1 => B(3),
      I2 => A(0),
      I3 => B(4),
      I4 => A(16),
      O => \Result[23]_INST_0_i_7_n_0\
    );
\Result[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[24]_INST_0_i_1_n_0\,
      I1 => \Result[24]_INST_0_i_2_n_0\,
      O => \^result\(24),
      S => ALUControl(2)
    );
\Result[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      I2 => ALUControl(1),
      I3 => data1(24),
      I4 => ALUControl(0),
      I5 => data0(24),
      O => \Result[24]_INST_0_i_1_n_0\
    );
\Result[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[24]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(24),
      I3 => B(24),
      I4 => ALUControl(0),
      O => \Result[24]_INST_0_i_2_n_0\
    );
\Result[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[25]_INST_0_i_4_n_0\,
      I1 => \Result[24]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[24]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[25]_INST_0_i_5_n_0\,
      O => \Result[24]_INST_0_i_3_n_0\
    );
\Result[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[26]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[24]_INST_0_i_6_n_0\,
      O => \Result[24]_INST_0_i_4_n_0\
    );
\Result[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[24]_INST_0_i_7_n_0\,
      I1 => \Result[28]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[26]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_12_n_0\,
      O => \Result[24]_INST_0_i_5_n_0\
    );
\Result[24]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(28),
      I1 => B(2),
      I2 => B(4),
      I3 => A(24),
      I4 => B(3),
      O => \Result[24]_INST_0_i_6_n_0\
    );
\Result[24]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(9),
      I1 => B(3),
      I2 => A(1),
      I3 => B(4),
      I4 => A(17),
      O => \Result[24]_INST_0_i_7_n_0\
    );
\Result[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[25]_INST_0_i_1_n_0\,
      I1 => \Result[25]_INST_0_i_2_n_0\,
      O => \^result\(25),
      S => ALUControl(2)
    );
\Result[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      I2 => ALUControl(1),
      I3 => data1(25),
      I4 => ALUControl(0),
      I5 => data0(25),
      O => \Result[25]_INST_0_i_1_n_0\
    );
\Result[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[25]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(25),
      I3 => B(25),
      I4 => ALUControl(0),
      O => \Result[25]_INST_0_i_2_n_0\
    );
\Result[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[26]_INST_0_i_4_n_0\,
      I1 => \Result[25]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[25]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[26]_INST_0_i_5_n_0\,
      O => \Result[25]_INST_0_i_3_n_0\
    );
\Result[25]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[27]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[25]_INST_0_i_6_n_0\,
      O => \Result[25]_INST_0_i_4_n_0\
    );
\Result[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[25]_INST_0_i_7_n_0\,
      I1 => \Result[29]_INST_0_i_8_n_0\,
      I2 => B(1),
      I3 => \Result[27]_INST_0_i_7_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_10_n_0\,
      O => \Result[25]_INST_0_i_5_n_0\
    );
\Result[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(29),
      I1 => B(2),
      I2 => B(4),
      I3 => A(25),
      I4 => B(3),
      O => \Result[25]_INST_0_i_6_n_0\
    );
\Result[25]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(10),
      I1 => B(3),
      I2 => A(2),
      I3 => B(4),
      I4 => A(18),
      O => \Result[25]_INST_0_i_7_n_0\
    );
\Result[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[26]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[26]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[26]_INST_0_i_3_n_0\,
      O => \^result\(26)
    );
\Result[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[27]_INST_0_i_4_n_0\,
      I1 => \Result[26]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[26]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[27]_INST_0_i_5_n_0\,
      O => \Result[26]_INST_0_i_1_n_0\
    );
\Result[26]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      O => \Result[26]_INST_0_i_2_n_0\
    );
\Result[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      I2 => ALUControl(1),
      I3 => data1(26),
      I4 => ALUControl(0),
      I5 => data0(26),
      O => \Result[26]_INST_0_i_3_n_0\
    );
\Result[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(28),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \Result[26]_INST_0_i_6_n_0\,
      O => \Result[26]_INST_0_i_4_n_0\
    );
\Result[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[26]_INST_0_i_7_n_0\,
      I1 => \Result[29]_INST_0_i_12_n_0\,
      I2 => B(1),
      I3 => \Result[28]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_14_n_0\,
      O => \Result[26]_INST_0_i_5_n_0\
    );
\Result[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(30),
      I1 => B(2),
      I2 => B(4),
      I3 => A(26),
      I4 => B(3),
      O => \Result[26]_INST_0_i_6_n_0\
    );
\Result[26]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(11),
      I1 => B(3),
      I2 => A(3),
      I3 => B(4),
      I4 => A(19),
      O => \Result[26]_INST_0_i_7_n_0\
    );
\Result[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[27]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[27]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[27]_INST_0_i_3_n_0\,
      O => \^result\(27)
    );
\Result[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[28]_INST_0_i_4_n_0\,
      I1 => \Result[27]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[27]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[28]_INST_0_i_5_n_0\,
      O => \Result[27]_INST_0_i_1_n_0\
    );
\Result[27]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      O => \Result[27]_INST_0_i_2_n_0\
    );
\Result[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      I2 => ALUControl(1),
      I3 => data1(27),
      I4 => ALUControl(0),
      I5 => data0(27),
      O => \Result[27]_INST_0_i_3_n_0\
    );
\Result[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(29),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \Result[27]_INST_0_i_6_n_0\,
      O => \Result[27]_INST_0_i_4_n_0\
    );
\Result[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[27]_INST_0_i_7_n_0\,
      I1 => \Result[29]_INST_0_i_10_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_8_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_9_n_0\,
      O => \Result[27]_INST_0_i_5_n_0\
    );
\Result[27]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(31),
      I1 => B(2),
      I2 => B(4),
      I3 => A(27),
      I4 => B(3),
      O => \Result[27]_INST_0_i_6_n_0\
    );
\Result[27]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(12),
      I1 => B(3),
      I2 => A(4),
      I3 => B(4),
      I4 => A(20),
      O => \Result[27]_INST_0_i_7_n_0\
    );
\Result[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[28]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[28]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[28]_INST_0_i_3_n_0\,
      O => \^result\(28)
    );
\Result[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_5_n_0\,
      I1 => \Result[28]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[28]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[29]_INST_0_i_6_n_0\,
      O => \Result[28]_INST_0_i_1_n_0\
    );
\Result[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      O => \Result[28]_INST_0_i_2_n_0\
    );
\Result[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      I2 => ALUControl(1),
      I3 => data1(28),
      I4 => ALUControl(0),
      I5 => data0(28),
      O => \Result[28]_INST_0_i_3_n_0\
    );
\Result[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(30),
      I1 => B(1),
      I2 => B(3),
      I3 => A(28),
      I4 => B(4),
      I5 => B(2),
      O => \Result[28]_INST_0_i_4_n_0\
    );
\Result[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[28]_INST_0_i_6_n_0\,
      I1 => \Result[29]_INST_0_i_14_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_12_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_13_n_0\,
      O => \Result[28]_INST_0_i_5_n_0\
    );
\Result[28]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(13),
      I1 => B(3),
      I2 => A(5),
      I3 => B(4),
      I4 => A(21),
      O => \Result[28]_INST_0_i_6_n_0\
    );
\Result[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[29]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[29]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[29]_INST_0_i_3_n_0\,
      O => \^result\(29)
    );
\Result[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_4_n_0\,
      I1 => \Result[29]_INST_0_i_5_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[29]_INST_0_i_6_n_0\,
      I4 => B(0),
      I5 => \Result[29]_INST_0_i_7_n_0\,
      O => \Result[29]_INST_0_i_1_n_0\
    );
\Result[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(0),
      I1 => A(16),
      I2 => B(3),
      I3 => A(8),
      I4 => B(4),
      I5 => A(24),
      O => \Result[29]_INST_0_i_10_n_0\
    );
\Result[29]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(4),
      I1 => A(20),
      I2 => B(3),
      I3 => A(12),
      I4 => B(4),
      I5 => A(28),
      O => \Result[29]_INST_0_i_11_n_0\
    );
\Result[29]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(15),
      I1 => B(3),
      I2 => A(7),
      I3 => B(4),
      I4 => A(23),
      O => \Result[29]_INST_0_i_12_n_0\
    );
\Result[29]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(3),
      I1 => A(19),
      I2 => B(3),
      I3 => A(11),
      I4 => B(4),
      I5 => A(27),
      O => \Result[29]_INST_0_i_13_n_0\
    );
\Result[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(1),
      I1 => A(17),
      I2 => B(3),
      I3 => A(9),
      I4 => B(4),
      I5 => A(25),
      O => \Result[29]_INST_0_i_14_n_0\
    );
\Result[29]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(5),
      I1 => A(21),
      I2 => B(3),
      I3 => A(13),
      I4 => B(4),
      I5 => A(29),
      O => \Result[29]_INST_0_i_15_n_0\
    );
\Result[29]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      O => \Result[29]_INST_0_i_2_n_0\
    );
\Result[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => ALUControl(1),
      I3 => data1(29),
      I4 => ALUControl(0),
      I5 => data0(29),
      O => \Result[29]_INST_0_i_3_n_0\
    );
\Result[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(30),
      I3 => B(3),
      I4 => B(1),
      O => \Result[29]_INST_0_i_4_n_0\
    );
\Result[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(31),
      I1 => B(1),
      I2 => B(3),
      I3 => A(29),
      I4 => B(4),
      I5 => B(2),
      O => \Result[29]_INST_0_i_5_n_0\
    );
\Result[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_8_n_0\,
      I1 => \Result[29]_INST_0_i_9_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_10_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_11_n_0\,
      O => \Result[29]_INST_0_i_6_n_0\
    );
\Result[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_12_n_0\,
      I1 => \Result[29]_INST_0_i_13_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_14_n_0\,
      I4 => B(2),
      I5 => \Result[29]_INST_0_i_15_n_0\,
      O => \Result[29]_INST_0_i_7_n_0\
    );
\Result[29]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(14),
      I1 => B(3),
      I2 => A(6),
      I3 => B(4),
      I4 => A(22),
      O => \Result[29]_INST_0_i_8_n_0\
    );
\Result[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(2),
      I1 => A(18),
      I2 => B(3),
      I3 => A(10),
      I4 => B(4),
      I5 => A(26),
      O => \Result[29]_INST_0_i_9_n_0\
    );
\Result[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[2]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[2]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[2]_INST_0_i_3_n_0\,
      O => \^result\(2)
    );
\Result[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[3]_INST_0_i_4_n_0\,
      I1 => \Result[2]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[2]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[3]_INST_0_i_5_n_0\,
      O => \Result[2]_INST_0_i_1_n_0\
    );
\Result[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \Result[2]_INST_0_i_2_n_0\
    );
\Result[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => ALUControl(1),
      I3 => data1(2),
      I4 => ALUControl(0),
      I5 => data0(2),
      O => \Result[2]_INST_0_i_3_n_0\
    );
\Result[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_9_n_0\,
      I1 => \Result[4]_INST_0_i_6_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_11_n_0\,
      I4 => B(2),
      I5 => \Result[2]_INST_0_i_6_n_0\,
      O => \Result[2]_INST_0_i_4_n_0\
    );
\Result[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(1),
      I3 => B(3),
      I4 => B(1),
      O => \Result[2]_INST_0_i_5_n_0\
    );
\Result[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(26),
      I1 => A(10),
      I2 => B(3),
      I3 => A(18),
      I4 => B(4),
      I5 => A(2),
      O => \Result[2]_INST_0_i_6_n_0\
    );
\Result[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[30]_INST_0_i_1_n_0\,
      I1 => \Result[30]_INST_0_i_2_n_0\,
      O => \^result\(30),
      S => ALUControl(2)
    );
\Result[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      I2 => ALUControl(1),
      I3 => data1(30),
      I4 => ALUControl(0),
      I5 => data0(30),
      O => \Result[30]_INST_0_i_1_n_0\
    );
\Result[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[30]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(30),
      I3 => B(30),
      I4 => ALUControl(0),
      O => \Result[30]_INST_0_i_2_n_0\
    );
\Result[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[31]_INST_0_i_4_n_0\,
      I1 => \Result[29]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[29]_INST_0_i_7_n_0\,
      I4 => B(0),
      I5 => \Result[31]_INST_0_i_5_n_0\,
      O => \Result[30]_INST_0_i_3_n_0\
    );
\Result[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[31]_INST_0_i_1_n_0\,
      I1 => \Result[31]_INST_0_i_2_n_0\,
      O => \^result\(31),
      S => ALUControl(2)
    );
\Result[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      I2 => ALUControl(1),
      I3 => data1(31),
      I4 => ALUControl(0),
      I5 => data0(31),
      O => \Result[31]_INST_0_i_1_n_0\
    );
\Result[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[31]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(31),
      I3 => B(31),
      I4 => ALUControl(0),
      O => \Result[31]_INST_0_i_2_n_0\
    );
\Result[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \Result[31]_INST_0_i_4_n_0\,
      I1 => ALUControl(0),
      I2 => \Result[31]_INST_0_i_5_n_0\,
      I3 => B(0),
      I4 => \Result[31]_INST_0_i_6_n_0\,
      O => \Result[31]_INST_0_i_3_n_0\
    );
\Result[31]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => B(2),
      I1 => B(4),
      I2 => A(31),
      I3 => B(3),
      I4 => B(1),
      O => \Result[31]_INST_0_i_4_n_0\
    );
\Result[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_10_n_0\,
      I1 => \Result[29]_INST_0_i_11_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_9_n_0\,
      I4 => B(2),
      I5 => \Result[31]_INST_0_i_7_n_0\,
      O => \Result[31]_INST_0_i_5_n_0\
    );
\Result[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[29]_INST_0_i_14_n_0\,
      I1 => \Result[29]_INST_0_i_15_n_0\,
      I2 => B(1),
      I3 => \Result[29]_INST_0_i_13_n_0\,
      I4 => B(2),
      I5 => \Result[31]_INST_0_i_8_n_0\,
      O => \Result[31]_INST_0_i_6_n_0\
    );
\Result[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(6),
      I1 => A(22),
      I2 => B(3),
      I3 => A(14),
      I4 => B(4),
      I5 => A(30),
      O => \Result[31]_INST_0_i_7_n_0\
    );
\Result[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(7),
      I1 => A(23),
      I2 => B(3),
      I3 => A(15),
      I4 => B(4),
      I5 => A(31),
      O => \Result[31]_INST_0_i_8_n_0\
    );
\Result[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[3]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[3]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[3]_INST_0_i_3_n_0\,
      O => \^result\(3)
    );
\Result[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[4]_INST_0_i_4_n_0\,
      I1 => \Result[3]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[3]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[4]_INST_0_i_5_n_0\,
      O => \Result[3]_INST_0_i_1_n_0\
    );
\Result[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      O => \Result[3]_INST_0_i_2_n_0\
    );
\Result[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => ALUControl(1),
      I3 => data1(3),
      I4 => ALUControl(0),
      I5 => data0(3),
      O => \Result[3]_INST_0_i_3_n_0\
    );
\Result[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_14_n_0\,
      I1 => \Result[5]_INST_0_i_15_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_13_n_0\,
      I4 => B(2),
      I5 => \Result[3]_INST_0_i_6_n_0\,
      O => \Result[3]_INST_0_i_4_n_0\
    );
\Result[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(0),
      I1 => B(1),
      I2 => B(3),
      I3 => A(2),
      I4 => B(4),
      I5 => B(2),
      O => \Result[3]_INST_0_i_5_n_0\
    );
\Result[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(27),
      I1 => A(11),
      I2 => B(3),
      I3 => A(19),
      I4 => B(4),
      I5 => A(3),
      O => \Result[3]_INST_0_i_6_n_0\
    );
\Result[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[4]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[4]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[4]_INST_0_i_3_n_0\,
      O => \^result\(4)
    );
\Result[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_5_n_0\,
      I1 => \Result[4]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[4]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[5]_INST_0_i_6_n_0\,
      O => \Result[4]_INST_0_i_1_n_0\
    );
\Result[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \Result[4]_INST_0_i_2_n_0\
    );
\Result[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => ALUControl(1),
      I3 => data1(4),
      I4 => ALUControl(0),
      I5 => data0(4),
      O => \Result[4]_INST_0_i_3_n_0\
    );
\Result[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_10_n_0\,
      I1 => \Result[5]_INST_0_i_11_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_9_n_0\,
      I4 => B(2),
      I5 => \Result[4]_INST_0_i_6_n_0\,
      O => \Result[4]_INST_0_i_4_n_0\
    );
\Result[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      I2 => B(3),
      I3 => A(3),
      I4 => B(4),
      I5 => B(2),
      O => \Result[4]_INST_0_i_5_n_0\
    );
\Result[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(28),
      I1 => A(12),
      I2 => B(3),
      I3 => A(20),
      I4 => B(4),
      I5 => A(4),
      O => \Result[4]_INST_0_i_6_n_0\
    );
\Result[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \Result[5]_INST_0_i_1_n_0\,
      I1 => ALUControl(1),
      I2 => \Result[5]_INST_0_i_2_n_0\,
      I3 => ALUControl(0),
      I4 => ALUControl(2),
      I5 => \Result[5]_INST_0_i_3_n_0\,
      O => \^result\(5)
    );
\Result[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_4_n_0\,
      I1 => \Result[5]_INST_0_i_5_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[5]_INST_0_i_6_n_0\,
      I4 => B(0),
      I5 => \Result[5]_INST_0_i_7_n_0\,
      O => \Result[5]_INST_0_i_1_n_0\
    );
\Result[5]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(18),
      I1 => B(3),
      I2 => A(26),
      I3 => B(4),
      I4 => A(10),
      O => \Result[5]_INST_0_i_10_n_0\
    );
\Result[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(30),
      I1 => A(14),
      I2 => B(3),
      I3 => A(22),
      I4 => B(4),
      I5 => A(6),
      O => \Result[5]_INST_0_i_11_n_0\
    );
\Result[5]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(19),
      I1 => B(3),
      I2 => A(27),
      I3 => B(4),
      I4 => A(11),
      O => \Result[5]_INST_0_i_12_n_0\
    );
\Result[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(31),
      I1 => A(15),
      I2 => B(3),
      I3 => A(23),
      I4 => B(4),
      I5 => A(7),
      O => \Result[5]_INST_0_i_13_n_0\
    );
\Result[5]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(17),
      I1 => B(3),
      I2 => A(25),
      I3 => B(4),
      I4 => A(9),
      O => \Result[5]_INST_0_i_14_n_0\
    );
\Result[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => A(29),
      I1 => A(13),
      I2 => B(3),
      I3 => A(21),
      I4 => B(4),
      I5 => A(5),
      O => \Result[5]_INST_0_i_15_n_0\
    );
\Result[5]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(0),
      I1 => B(2),
      I2 => B(4),
      I3 => A(4),
      I4 => B(3),
      O => \Result[5]_INST_0_i_16_n_0\
    );
\Result[5]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(1),
      I1 => B(2),
      I2 => B(4),
      I3 => A(5),
      I4 => B(3),
      O => \Result[5]_INST_0_i_17_n_0\
    );
\Result[5]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \Result[5]_INST_0_i_2_n_0\
    );
\Result[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => ALUControl(1),
      I3 => data1(5),
      I4 => ALUControl(0),
      I5 => data0(5),
      O => \Result[5]_INST_0_i_3_n_0\
    );
\Result[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_8_n_0\,
      I1 => \Result[5]_INST_0_i_9_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_10_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_11_n_0\,
      O => \Result[5]_INST_0_i_4_n_0\
    );
\Result[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[5]_INST_0_i_12_n_0\,
      I1 => \Result[5]_INST_0_i_13_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_14_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_15_n_0\,
      O => \Result[5]_INST_0_i_5_n_0\
    );
\Result[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(2),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \Result[5]_INST_0_i_16_n_0\,
      O => \Result[5]_INST_0_i_6_n_0\
    );
\Result[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => B(4),
      I3 => B(2),
      I4 => B(1),
      I5 => \Result[5]_INST_0_i_17_n_0\,
      O => \Result[5]_INST_0_i_7_n_0\
    );
\Result[5]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(20),
      I1 => B(3),
      I2 => A(28),
      I3 => B(4),
      I4 => A(12),
      O => \Result[5]_INST_0_i_8_n_0\
    );
\Result[5]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => A(16),
      I1 => B(3),
      I2 => A(24),
      I3 => B(4),
      I4 => A(8),
      O => \Result[5]_INST_0_i_9_n_0\
    );
\Result[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[6]_INST_0_i_1_n_0\,
      I1 => \Result[6]_INST_0_i_2_n_0\,
      O => \^result\(6),
      S => ALUControl(2)
    );
\Result[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => ALUControl(1),
      I3 => data1(6),
      I4 => ALUControl(0),
      I5 => data0(6),
      O => \Result[6]_INST_0_i_1_n_0\
    );
\Result[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[6]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(6),
      I3 => B(6),
      I4 => ALUControl(0),
      O => \Result[6]_INST_0_i_2_n_0\
    );
\Result[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[7]_INST_0_i_4_n_0\,
      I1 => \Result[5]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[5]_INST_0_i_7_n_0\,
      I4 => B(0),
      I5 => \Result[7]_INST_0_i_5_n_0\,
      O => \Result[6]_INST_0_i_3_n_0\
    );
\Result[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[7]_INST_0_i_1_n_0\,
      I1 => \Result[7]_INST_0_i_2_n_0\,
      O => \^result\(7),
      S => ALUControl(2)
    );
\Result[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      I2 => ALUControl(1),
      I3 => data1(7),
      I4 => ALUControl(0),
      I5 => data0(7),
      O => \Result[7]_INST_0_i_1_n_0\
    );
\Result[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[7]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(7),
      I3 => B(7),
      I4 => ALUControl(0),
      O => \Result[7]_INST_0_i_2_n_0\
    );
\Result[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[8]_INST_0_i_4_n_0\,
      I1 => \Result[7]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[7]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[8]_INST_0_i_5_n_0\,
      O => \Result[7]_INST_0_i_3_n_0\
    );
\Result[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[13]_INST_0_i_6_n_0\,
      I1 => \Result[5]_INST_0_i_14_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_12_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_13_n_0\,
      O => \Result[7]_INST_0_i_4_n_0\
    );
\Result[7]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[5]_INST_0_i_16_n_0\,
      I1 => B(1),
      I2 => \Result[9]_INST_0_i_6_n_0\,
      O => \Result[7]_INST_0_i_5_n_0\
    );
\Result[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[8]_INST_0_i_1_n_0\,
      I1 => \Result[8]_INST_0_i_2_n_0\,
      O => \^result\(8),
      S => ALUControl(2)
    );
\Result[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => ALUControl(1),
      I3 => data1(8),
      I4 => ALUControl(0),
      I5 => data0(8),
      O => \Result[8]_INST_0_i_1_n_0\
    );
\Result[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[8]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(8),
      I3 => B(8),
      I4 => ALUControl(0),
      O => \Result[8]_INST_0_i_2_n_0\
    );
\Result[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[9]_INST_0_i_4_n_0\,
      I1 => \Result[8]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[8]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[9]_INST_0_i_5_n_0\,
      O => \Result[8]_INST_0_i_3_n_0\
    );
\Result[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[14]_INST_0_i_6_n_0\,
      I1 => \Result[5]_INST_0_i_10_n_0\,
      I2 => B(1),
      I3 => \Result[5]_INST_0_i_8_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_9_n_0\,
      O => \Result[8]_INST_0_i_4_n_0\
    );
\Result[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[5]_INST_0_i_17_n_0\,
      I1 => B(1),
      I2 => \Result[10]_INST_0_i_6_n_0\,
      O => \Result[8]_INST_0_i_5_n_0\
    );
\Result[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Result[9]_INST_0_i_1_n_0\,
      I1 => \Result[9]_INST_0_i_2_n_0\,
      O => \^result\(9),
      S => ALUControl(2)
    );
\Result[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE08F8FEFE08080"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => ALUControl(1),
      I3 => data1(9),
      I4 => ALUControl(0),
      I5 => data0(9),
      O => \Result[9]_INST_0_i_1_n_0\
    );
\Result[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \Result[9]_INST_0_i_3_n_0\,
      I1 => ALUControl(1),
      I2 => A(9),
      I3 => B(9),
      I4 => ALUControl(0),
      O => \Result[9]_INST_0_i_2_n_0\
    );
\Result[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[10]_INST_0_i_4_n_0\,
      I1 => \Result[9]_INST_0_i_4_n_0\,
      I2 => ALUControl(0),
      I3 => \Result[9]_INST_0_i_5_n_0\,
      I4 => B(0),
      I5 => \Result[10]_INST_0_i_5_n_0\,
      O => \Result[9]_INST_0_i_3_n_0\
    );
\Result[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Result[15]_INST_0_i_6_n_0\,
      I1 => \Result[5]_INST_0_i_12_n_0\,
      I2 => B(1),
      I3 => \Result[13]_INST_0_i_6_n_0\,
      I4 => B(2),
      I5 => \Result[5]_INST_0_i_14_n_0\,
      O => \Result[9]_INST_0_i_4_n_0\
    );
\Result[9]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Result[9]_INST_0_i_6_n_0\,
      I1 => B(1),
      I2 => \Result[11]_INST_0_i_6_n_0\,
      O => \Result[9]_INST_0_i_5_n_0\
    );
\Result[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => B(4),
      I3 => A(6),
      I4 => B(3),
      O => \Result[9]_INST_0_i_6_n_0\
    );
Zero_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => Zero_INST_0_i_1_n_0,
      I1 => Zero_INST_0_i_2_n_0,
      I2 => Zero_INST_0_i_3_n_0,
      I3 => Zero_INST_0_i_4_n_0,
      I4 => Zero_INST_0_i_5_n_0,
      I5 => Zero_INST_0_i_6_n_0,
      O => Zero
    );
Zero_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result\(19),
      I1 => \^result\(18),
      I2 => \^result\(17),
      I3 => \^result\(16),
      O => Zero_INST_0_i_1_n_0
    );
Zero_INST_0_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \Result[2]_INST_0_i_3_n_0\,
      I1 => Zero_INST_0_i_17_n_0,
      I2 => \Result[3]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => Zero_INST_0_i_18_n_0,
      O => Zero_INST_0_i_10_n_0
    );
Zero_INST_0_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_19_n_0,
      I1 => \Result[28]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_11_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_20_n_0,
      I1 => \Result[29]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_12_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_21_n_0,
      I1 => \Result[26]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_13_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_22_n_0,
      I1 => \Result[27]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_14_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_23_n_0,
      I1 => \Result[4]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_15_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_24_n_0,
      I1 => \Result[5]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_16_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_25_n_0,
      I1 => \Result[2]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_17_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => Zero_INST_0_i_26_n_0,
      I1 => \Result[3]_INST_0_i_1_n_0\,
      O => Zero_INST_0_i_18_n_0,
      S => ALUControl(1)
    );
Zero_INST_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_19_n_0
    );
Zero_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result\(23),
      I1 => \^result\(22),
      I2 => \^result\(21),
      I3 => \^result\(20),
      O => Zero_INST_0_i_2_n_0
    );
Zero_INST_0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_20_n_0
    );
Zero_INST_0_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_21_n_0
    );
Zero_INST_0_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_22_n_0
    );
Zero_INST_0_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_23_n_0
    );
Zero_INST_0_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_24_n_0
    );
Zero_INST_0_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_25_n_0
    );
Zero_INST_0_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      I2 => ALUControl(0),
      O => Zero_INST_0_i_26_n_0
    );
Zero_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => Zero_INST_0_i_7_n_0,
      I1 => \^result\(31),
      I2 => \^result\(30),
      I3 => Zero_INST_0_i_8_n_0,
      I4 => \^result\(24),
      I5 => \^result\(25),
      O => Zero_INST_0_i_3_n_0
    );
Zero_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result\(15),
      I1 => \^result\(14),
      I2 => \^result\(13),
      I3 => \^result\(12),
      O => Zero_INST_0_i_4_n_0
    );
Zero_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^result\(9),
      I1 => \^result\(8),
      I2 => \^result\(11),
      I3 => \^result\(10),
      O => Zero_INST_0_i_5_n_0
    );
Zero_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => Zero_INST_0_i_9_n_0,
      I1 => \^result\(6),
      I2 => \^result\(7),
      I3 => Zero_INST_0_i_10_n_0,
      I4 => \^result\(0),
      I5 => \^result\(1),
      O => Zero_INST_0_i_6_n_0
    );
Zero_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \Result[28]_INST_0_i_3_n_0\,
      I1 => Zero_INST_0_i_11_n_0,
      I2 => \Result[29]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => Zero_INST_0_i_12_n_0,
      O => Zero_INST_0_i_7_n_0
    );
Zero_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \Result[26]_INST_0_i_3_n_0\,
      I1 => Zero_INST_0_i_13_n_0,
      I2 => \Result[27]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => Zero_INST_0_i_14_n_0,
      O => Zero_INST_0_i_8_n_0
    );
Zero_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \Result[4]_INST_0_i_3_n_0\,
      I1 => Zero_INST_0_i_15_n_0,
      I2 => \Result[5]_INST_0_i_3_n_0\,
      I3 => ALUControl(2),
      I4 => Zero_INST_0_i_16_n_0,
      O => Zero_INST_0_i_9_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(22),
      I1 => B(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => \i__carry_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_alu_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero : out STD_LOGIC;
    LessSigned : out STD_LOGIC;
    LessUnsigned : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCVPROJECT_alu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_alu_0_0 : entity is "RISCVPROJECT_alu_0_0,alu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_alu_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_alu_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCVPROJECT_alu_0_0 : entity is "alu,Vivado 2026.1";
end RISCVPROJECT_alu_0_0;

architecture STRUCTURE of RISCVPROJECT_alu_0_0 is
begin
inst: entity work.RISCVPROJECT_alu_0_0_alu
     port map (
      A(31 downto 0) => A(31 downto 0),
      ALUControl(2 downto 0) => ALUControl(2 downto 0),
      B(31 downto 0) => B(31 downto 0),
      LessSigned => LessSigned,
      LessUnsigned => LessUnsigned,
      Result(31 downto 0) => Result(31 downto 0),
      Zero => Zero
    );
end STRUCTURE;
