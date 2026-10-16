-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:06 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/RISCVPROJECT_mux_alu_a_0_0_sim_netlist.vhdl
-- Design      : RISCVPROJECT_mux_alu_a_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_mux_alu_a_0_0_mux_alu_a is
  port (
    SrcA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUASrc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RD1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISCVPROJECT_mux_alu_a_0_0_mux_alu_a : entity is "mux_alu_a";
end RISCVPROJECT_mux_alu_a_0_0_mux_alu_a;

architecture STRUCTURE of RISCVPROJECT_mux_alu_a_0_0_mux_alu_a is
begin
\SrcA[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(0),
      I2 => PC(0),
      I3 => ALUASrc(1),
      O => SrcA(0)
    );
\SrcA[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(10),
      I2 => PC(10),
      I3 => ALUASrc(1),
      O => SrcA(10)
    );
\SrcA[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(11),
      I2 => PC(11),
      I3 => ALUASrc(1),
      O => SrcA(11)
    );
\SrcA[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(12),
      I2 => PC(12),
      I3 => ALUASrc(1),
      O => SrcA(12)
    );
\SrcA[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(13),
      I2 => PC(13),
      I3 => ALUASrc(1),
      O => SrcA(13)
    );
\SrcA[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(14),
      I2 => PC(14),
      I3 => ALUASrc(1),
      O => SrcA(14)
    );
\SrcA[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(15),
      I2 => PC(15),
      I3 => ALUASrc(1),
      O => SrcA(15)
    );
\SrcA[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(16),
      I2 => PC(16),
      I3 => ALUASrc(1),
      O => SrcA(16)
    );
\SrcA[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(17),
      I2 => PC(17),
      I3 => ALUASrc(1),
      O => SrcA(17)
    );
\SrcA[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(18),
      I2 => PC(18),
      I3 => ALUASrc(1),
      O => SrcA(18)
    );
\SrcA[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(19),
      I2 => PC(19),
      I3 => ALUASrc(1),
      O => SrcA(19)
    );
\SrcA[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(1),
      I2 => PC(1),
      I3 => ALUASrc(1),
      O => SrcA(1)
    );
\SrcA[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(20),
      I2 => PC(20),
      I3 => ALUASrc(1),
      O => SrcA(20)
    );
\SrcA[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(21),
      I2 => PC(21),
      I3 => ALUASrc(1),
      O => SrcA(21)
    );
\SrcA[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(22),
      I2 => PC(22),
      I3 => ALUASrc(1),
      O => SrcA(22)
    );
\SrcA[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(23),
      I2 => PC(23),
      I3 => ALUASrc(1),
      O => SrcA(23)
    );
\SrcA[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(24),
      I2 => PC(24),
      I3 => ALUASrc(1),
      O => SrcA(24)
    );
\SrcA[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(25),
      I2 => PC(25),
      I3 => ALUASrc(1),
      O => SrcA(25)
    );
\SrcA[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(26),
      I2 => PC(26),
      I3 => ALUASrc(1),
      O => SrcA(26)
    );
\SrcA[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(27),
      I2 => PC(27),
      I3 => ALUASrc(1),
      O => SrcA(27)
    );
\SrcA[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(28),
      I2 => PC(28),
      I3 => ALUASrc(1),
      O => SrcA(28)
    );
\SrcA[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(29),
      I2 => PC(29),
      I3 => ALUASrc(1),
      O => SrcA(29)
    );
\SrcA[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(2),
      I2 => PC(2),
      I3 => ALUASrc(1),
      O => SrcA(2)
    );
\SrcA[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(30),
      I2 => PC(30),
      I3 => ALUASrc(1),
      O => SrcA(30)
    );
\SrcA[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(31),
      I2 => PC(31),
      I3 => ALUASrc(1),
      O => SrcA(31)
    );
\SrcA[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(3),
      I2 => PC(3),
      I3 => ALUASrc(1),
      O => SrcA(3)
    );
\SrcA[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(4),
      I2 => PC(4),
      I3 => ALUASrc(1),
      O => SrcA(4)
    );
\SrcA[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(5),
      I2 => PC(5),
      I3 => ALUASrc(1),
      O => SrcA(5)
    );
\SrcA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(6),
      I2 => PC(6),
      I3 => ALUASrc(1),
      O => SrcA(6)
    );
\SrcA[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(7),
      I2 => PC(7),
      I3 => ALUASrc(1),
      O => SrcA(7)
    );
\SrcA[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(8),
      I2 => PC(8),
      I3 => ALUASrc(1),
      O => SrcA(8)
    );
\SrcA[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ALUASrc(0),
      I1 => RD1(9),
      I2 => PC(9),
      I3 => ALUASrc(1),
      O => SrcA(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_mux_alu_a_0_0 is
  port (
    RD1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUASrc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SrcA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCVPROJECT_mux_alu_a_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_mux_alu_a_0_0 : entity is "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_mux_alu_a_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_mux_alu_a_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCVPROJECT_mux_alu_a_0_0 : entity is "mux_alu_a,Vivado 2026.1";
end RISCVPROJECT_mux_alu_a_0_0;

architecture STRUCTURE of RISCVPROJECT_mux_alu_a_0_0 is
begin
inst: entity work.RISCVPROJECT_mux_alu_a_0_0_mux_alu_a
     port map (
      ALUASrc(1 downto 0) => ALUASrc(1 downto 0),
      PC(31 downto 0) => PC(31 downto 0),
      RD1(31 downto 0) => RD1(31 downto 0),
      SrcA(31 downto 0) => SrcA(31 downto 0)
    );
end STRUCTURE;
