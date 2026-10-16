-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:06 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_decoder_control_0_0/RISCVPROJECT_decoder_control_0_0_sim_netlist.vhdl
-- Design      : RISCVPROJECT_decoder_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_decoder_control_0_0 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 6 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7b5 : in STD_LOGIC;
    Zero : in STD_LOGIC;
    LessSigned : in STD_LOGIC;
    LessUnsigned : in STD_LOGIC;
    RegWrite : out STD_LOGIC;
    ImmSrc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUSrc : out STD_LOGIC;
    ALUASrc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MemWrite : out STD_LOGIC;
    ResultSrc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PCSrc : out STD_LOGIC;
    IsJalr : out STD_LOGIC;
    ALUControl : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCVPROJECT_decoder_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_decoder_control_0_0 : entity is "RISCVPROJECT_decoder_control_0_0,decoder_control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_decoder_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_decoder_control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCVPROJECT_decoder_control_0_0 : entity is "decoder_control,Vivado 2026.1";
end RISCVPROJECT_decoder_control_0_0;

architecture STRUCTURE of RISCVPROJECT_decoder_control_0_0 is
  signal \ALUASrc[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUControl[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ALUControl[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ALUControl[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ImmSrc[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal PCSrc_INST_0_i_1_n_0 : STD_LOGIC;
  signal PCSrc_INST_0_i_2_n_0 : STD_LOGIC;
  signal PCSrc_INST_0_i_3_n_0 : STD_LOGIC;
  signal RegWrite_INST_0_i_1_n_0 : STD_LOGIC;
  signal RegWrite_INST_0_i_2_n_0 : STD_LOGIC;
  signal RegWrite_INST_0_i_3_n_0 : STD_LOGIC;
  signal RegWrite_INST_0_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALUASrc[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ALUControl[0]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ALUControl[0]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ALUControl[0]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of PCSrc_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of RegWrite_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of RegWrite_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of RegWrite_INST_0_i_3 : label is "soft_lutpair3";
begin
\ALUASrc[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => opcode(2),
      I1 => \ALUASrc[1]_INST_0_i_1_n_0\,
      I2 => opcode(5),
      O => ALUASrc(0)
    );
\ALUASrc[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => opcode(2),
      I1 => \ALUASrc[1]_INST_0_i_1_n_0\,
      I2 => opcode(5),
      O => ALUASrc(1)
    );
\ALUASrc[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => opcode(6),
      I1 => opcode(1),
      I2 => opcode(0),
      I3 => opcode(3),
      I4 => opcode(4),
      O => \ALUASrc[1]_INST_0_i_1_n_0\
    );
\ALUControl[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0C0CFFAE0C0C"
    )
        port map (
      I0 => \ALUControl[0]_INST_0_i_1_n_0\,
      I1 => PCSrc_INST_0_i_2_n_0,
      I2 => opcode(2),
      I3 => \ALUControl[0]_INST_0_i_2_n_0\,
      I4 => \ALUASrc[1]_INST_0_i_1_n_0\,
      I5 => \ALUControl[0]_INST_0_i_3_n_0\,
      O => ALUControl(0)
    );
\ALUControl[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => funct3(2),
      I1 => funct3(0),
      I2 => funct3(1),
      I3 => opcode(2),
      O => \ALUControl[0]_INST_0_i_1_n_0\
    );
\ALUControl[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => opcode(5),
      I1 => funct7b5,
      I2 => funct3(2),
      I3 => opcode(2),
      I4 => funct3(0),
      O => \ALUControl[0]_INST_0_i_2_n_0\
    );
\ALUControl[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => funct3(0),
      I1 => opcode(2),
      I2 => funct3(1),
      O => \ALUControl[0]_INST_0_i_3_n_0\
    );
\ALUControl[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C088"
    )
        port map (
      I0 => funct3(0),
      I1 => \ALUASrc[1]_INST_0_i_1_n_0\,
      I2 => funct3(2),
      I3 => funct3(1),
      I4 => opcode(2),
      O => ALUControl(1)
    );
\ALUControl[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0048"
    )
        port map (
      I0 => funct3(2),
      I1 => \ALUASrc[1]_INST_0_i_1_n_0\,
      I2 => funct3(1),
      I3 => opcode(2),
      I4 => funct3(0),
      O => ALUControl(2)
    );
ALUSrc_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF000001010000"
    )
        port map (
      I0 => opcode(2),
      I1 => funct3(0),
      I2 => funct3(2),
      I3 => opcode(5),
      I4 => RegWrite_INST_0_i_1_n_0,
      I5 => opcode(4),
      O => ALUSrc
    );
\ImmSrc[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => opcode(3),
      I1 => RegWrite_INST_0_i_4_n_0,
      I2 => opcode(5),
      I3 => opcode(4),
      I4 => RegWrite_INST_0_i_2_n_0,
      I5 => RegWrite_INST_0_i_1_n_0,
      O => ImmSrc(0)
    );
\ImmSrc[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \ImmSrc[1]_INST_0_i_1_n_0\,
      I1 => opcode(3),
      I2 => opcode(2),
      O => ImmSrc(1)
    );
\ImmSrc[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => opcode(6),
      I1 => opcode(5),
      I2 => opcode(4),
      I3 => opcode(1),
      I4 => opcode(0),
      O => \ImmSrc[1]_INST_0_i_1_n_0\
    );
\ImmSrc[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(3),
      I2 => opcode(0),
      I3 => opcode(1),
      I4 => opcode(6),
      I5 => opcode(2),
      O => ImmSrc(2)
    );
IsJalr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => funct3(1),
      I1 => funct3(2),
      I2 => opcode(2),
      I3 => funct3(0),
      I4 => PCSrc_INST_0_i_2_n_0,
      O => IsJalr
    );
MemWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => RegWrite_INST_0_i_1_n_0,
      I1 => funct3(0),
      I2 => opcode(2),
      I3 => funct3(2),
      I4 => opcode(4),
      I5 => opcode(5),
      O => MemWrite
    );
PCSrc_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC8C8C8"
    )
        port map (
      I0 => PCSrc_INST_0_i_1_n_0,
      I1 => PCSrc_INST_0_i_2_n_0,
      I2 => PCSrc_INST_0_i_3_n_0,
      I3 => RegWrite_INST_0_i_3_n_0,
      I4 => RegWrite_INST_0_i_4_n_0,
      O => PCSrc
    );
PCSrc_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => LessUnsigned,
      I1 => funct3(1),
      I2 => funct3(2),
      I3 => funct3(0),
      I4 => opcode(2),
      O => PCSrc_INST_0_i_1_n_0
    );
PCSrc_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => opcode(6),
      I1 => opcode(5),
      I2 => opcode(4),
      I3 => opcode(3),
      I4 => opcode(0),
      I5 => opcode(1),
      O => PCSrc_INST_0_i_2_n_0
    );
PCSrc_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000006C6"
    )
        port map (
      I0 => Zero,
      I1 => funct3(0),
      I2 => funct3(2),
      I3 => LessSigned,
      I4 => funct3(1),
      I5 => opcode(2),
      O => PCSrc_INST_0_i_3_n_0
    );
RegWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88A888A888A8"
    )
        port map (
      I0 => RegWrite_INST_0_i_1_n_0,
      I1 => opcode(4),
      I2 => RegWrite_INST_0_i_2_n_0,
      I3 => opcode(5),
      I4 => RegWrite_INST_0_i_3_n_0,
      I5 => RegWrite_INST_0_i_4_n_0,
      O => RegWrite
    );
RegWrite_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => opcode(3),
      I1 => opcode(0),
      I2 => opcode(1),
      I3 => opcode(6),
      O => RegWrite_INST_0_i_1_n_0
    );
RegWrite_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => funct3(0),
      I1 => opcode(2),
      I2 => funct3(2),
      O => RegWrite_INST_0_i_2_n_0
    );
RegWrite_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => funct3(0),
      I1 => funct3(1),
      I2 => funct3(2),
      I3 => opcode(3),
      O => RegWrite_INST_0_i_3_n_0
    );
RegWrite_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      I2 => opcode(4),
      I3 => opcode(5),
      I4 => opcode(6),
      I5 => opcode(2),
      O => RegWrite_INST_0_i_4_n_0
    );
\ResultSrc[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => opcode(5),
      I1 => opcode(4),
      I2 => RegWrite_INST_0_i_1_n_0,
      I3 => funct3(0),
      I4 => opcode(2),
      I5 => funct3(2),
      O => ResultSrc(0)
    );
\ResultSrc[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888888A"
    )
        port map (
      I0 => RegWrite_INST_0_i_4_n_0,
      I1 => opcode(3),
      I2 => funct3(2),
      I3 => funct3(1),
      I4 => funct3(0),
      O => ResultSrc(1)
    );
end STRUCTURE;
