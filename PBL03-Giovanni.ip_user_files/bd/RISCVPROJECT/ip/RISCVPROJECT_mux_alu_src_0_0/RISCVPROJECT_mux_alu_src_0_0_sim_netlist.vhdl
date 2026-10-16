-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:42 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_src_0_0/RISCVPROJECT_mux_alu_src_0_0_sim_netlist.vhdl
-- Design      : RISCVPROJECT_mux_alu_src_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_mux_alu_src_0_0_mux_alu_src is
  port (
    SrcB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmExt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RD2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISCVPROJECT_mux_alu_src_0_0_mux_alu_src : entity is "mux_alu_src";
end RISCVPROJECT_mux_alu_src_0_0_mux_alu_src;

architecture STRUCTURE of RISCVPROJECT_mux_alu_src_0_0_mux_alu_src is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SrcB[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SrcB[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SrcB[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SrcB[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SrcB[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SrcB[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SrcB[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SrcB[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SrcB[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SrcB[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SrcB[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SrcB[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SrcB[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SrcB[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SrcB[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SrcB[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SrcB[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \SrcB[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \SrcB[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SrcB[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SrcB[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SrcB[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SrcB[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SrcB[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SrcB[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SrcB[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SrcB[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SrcB[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SrcB[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SrcB[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SrcB[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SrcB[9]_INST_0\ : label is "soft_lutpair4";
begin
\SrcB[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(0),
      I1 => RD2(0),
      I2 => ALUSrc,
      O => SrcB(0)
    );
\SrcB[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(10),
      I1 => RD2(10),
      I2 => ALUSrc,
      O => SrcB(10)
    );
\SrcB[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(11),
      I1 => RD2(11),
      I2 => ALUSrc,
      O => SrcB(11)
    );
\SrcB[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(12),
      I1 => RD2(12),
      I2 => ALUSrc,
      O => SrcB(12)
    );
\SrcB[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(13),
      I1 => RD2(13),
      I2 => ALUSrc,
      O => SrcB(13)
    );
\SrcB[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(14),
      I1 => RD2(14),
      I2 => ALUSrc,
      O => SrcB(14)
    );
\SrcB[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(15),
      I1 => RD2(15),
      I2 => ALUSrc,
      O => SrcB(15)
    );
\SrcB[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(16),
      I1 => RD2(16),
      I2 => ALUSrc,
      O => SrcB(16)
    );
\SrcB[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(17),
      I1 => RD2(17),
      I2 => ALUSrc,
      O => SrcB(17)
    );
\SrcB[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(18),
      I1 => RD2(18),
      I2 => ALUSrc,
      O => SrcB(18)
    );
\SrcB[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(19),
      I1 => RD2(19),
      I2 => ALUSrc,
      O => SrcB(19)
    );
\SrcB[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(1),
      I1 => RD2(1),
      I2 => ALUSrc,
      O => SrcB(1)
    );
\SrcB[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(20),
      I1 => RD2(20),
      I2 => ALUSrc,
      O => SrcB(20)
    );
\SrcB[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(21),
      I1 => RD2(21),
      I2 => ALUSrc,
      O => SrcB(21)
    );
\SrcB[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(22),
      I1 => RD2(22),
      I2 => ALUSrc,
      O => SrcB(22)
    );
\SrcB[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(23),
      I1 => RD2(23),
      I2 => ALUSrc,
      O => SrcB(23)
    );
\SrcB[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(24),
      I1 => RD2(24),
      I2 => ALUSrc,
      O => SrcB(24)
    );
\SrcB[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(25),
      I1 => RD2(25),
      I2 => ALUSrc,
      O => SrcB(25)
    );
\SrcB[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(26),
      I1 => RD2(26),
      I2 => ALUSrc,
      O => SrcB(26)
    );
\SrcB[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(27),
      I1 => RD2(27),
      I2 => ALUSrc,
      O => SrcB(27)
    );
\SrcB[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(28),
      I1 => RD2(28),
      I2 => ALUSrc,
      O => SrcB(28)
    );
\SrcB[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(29),
      I1 => RD2(29),
      I2 => ALUSrc,
      O => SrcB(29)
    );
\SrcB[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(2),
      I1 => RD2(2),
      I2 => ALUSrc,
      O => SrcB(2)
    );
\SrcB[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(30),
      I1 => RD2(30),
      I2 => ALUSrc,
      O => SrcB(30)
    );
\SrcB[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(31),
      I1 => RD2(31),
      I2 => ALUSrc,
      O => SrcB(31)
    );
\SrcB[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(3),
      I1 => RD2(3),
      I2 => ALUSrc,
      O => SrcB(3)
    );
\SrcB[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(4),
      I1 => RD2(4),
      I2 => ALUSrc,
      O => SrcB(4)
    );
\SrcB[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(5),
      I1 => RD2(5),
      I2 => ALUSrc,
      O => SrcB(5)
    );
\SrcB[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(6),
      I1 => RD2(6),
      I2 => ALUSrc,
      O => SrcB(6)
    );
\SrcB[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(7),
      I1 => RD2(7),
      I2 => ALUSrc,
      O => SrcB(7)
    );
\SrcB[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(8),
      I1 => RD2(8),
      I2 => ALUSrc,
      O => SrcB(8)
    );
\SrcB[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ImmExt(9),
      I1 => RD2(9),
      I2 => ALUSrc,
      O => SrcB(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_mux_alu_src_0_0 is
  port (
    RD2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ImmExt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrc : in STD_LOGIC;
    SrcB : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCVPROJECT_mux_alu_src_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_mux_alu_src_0_0 : entity is "RISCVPROJECT_mux_alu_src_0_0,mux_alu_src,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_mux_alu_src_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_mux_alu_src_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCVPROJECT_mux_alu_src_0_0 : entity is "mux_alu_src,Vivado 2026.1";
end RISCVPROJECT_mux_alu_src_0_0;

architecture STRUCTURE of RISCVPROJECT_mux_alu_src_0_0 is
begin
inst: entity work.RISCVPROJECT_mux_alu_src_0_0_mux_alu_src
     port map (
      ALUSrc => ALUSrc,
      ImmExt(31 downto 0) => ImmExt(31 downto 0),
      RD2(31 downto 0) => RD2(31 downto 0),
      SrcB(31 downto 0) => SrcB(31 downto 0)
    );
end STRUCTURE;
