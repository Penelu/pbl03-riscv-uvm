-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:06 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_immediate_extended_0_0/RISCVPROJECT_immediate_extended_0_0_sim_netlist.vhdl
-- Design      : RISCVPROJECT_immediate_extended_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_immediate_extended_0_0_immediate_extended is
  port (
    ImmExt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Instr : in STD_LOGIC_VECTOR ( 31 downto 7 );
    ImmSrc : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RISCVPROJECT_immediate_extended_0_0_immediate_extended : entity is "immediate_extended";
end RISCVPROJECT_immediate_extended_0_0_immediate_extended;

architecture STRUCTURE of RISCVPROJECT_immediate_extended_0_0_immediate_extended is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ImmExt[25]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ImmExt[26]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ImmExt[27]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ImmExt[28]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ImmExt[29]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ImmExt[30]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ImmExt[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ImmExt[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ImmExt[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ImmExt[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ImmExt[8]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ImmExt[9]_INST_0\ : label is "soft_lutpair1";
begin
\ImmExt[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => Instr(20),
      I1 => ImmSrc(0),
      I2 => Instr(7),
      I3 => ImmSrc(1),
      I4 => ImmSrc(2),
      O => ImmExt(0)
    );
\ImmExt[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(30),
      I1 => ImmSrc(2),
      O => ImmExt(10)
    );
\ImmExt[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => Instr(20),
      I1 => ImmSrc(0),
      I2 => Instr(7),
      I3 => ImmSrc(1),
      I4 => Instr(31),
      I5 => ImmSrc(2),
      O => ImmExt(11)
    );
\ImmExt[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(12),
      I4 => ImmSrc(0),
      O => ImmExt(12)
    );
\ImmExt[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(13),
      I4 => ImmSrc(0),
      O => ImmExt(13)
    );
\ImmExt[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(14),
      I4 => ImmSrc(0),
      O => ImmExt(14)
    );
\ImmExt[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(15),
      I4 => ImmSrc(0),
      O => ImmExt(15)
    );
\ImmExt[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(16),
      I4 => ImmSrc(0),
      O => ImmExt(16)
    );
\ImmExt[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(17),
      I4 => ImmSrc(0),
      O => ImmExt(17)
    );
\ImmExt[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(18),
      I4 => ImmSrc(0),
      O => ImmExt(18)
    );
\ImmExt[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E023A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(19),
      I4 => ImmSrc(0),
      O => ImmExt(19)
    );
\ImmExt[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ED48"
    )
        port map (
      I0 => ImmSrc(1),
      I1 => Instr(8),
      I2 => ImmSrc(0),
      I3 => Instr(21),
      I4 => ImmSrc(2),
      O => ImmExt(1)
    );
\ImmExt[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(20),
      I4 => ImmSrc(0),
      O => ImmExt(20)
    );
\ImmExt[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(21),
      I4 => ImmSrc(0),
      O => ImmExt(21)
    );
\ImmExt[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(22),
      I4 => ImmSrc(0),
      O => ImmExt(22)
    );
\ImmExt[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(23),
      I4 => ImmSrc(0),
      O => ImmExt(23)
    );
\ImmExt[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(24),
      I4 => ImmSrc(0),
      O => ImmExt(24)
    );
\ImmExt[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(25),
      I4 => ImmSrc(0),
      O => ImmExt(25)
    );
\ImmExt[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(26),
      I4 => ImmSrc(0),
      O => ImmExt(26)
    );
\ImmExt[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(27),
      I4 => ImmSrc(0),
      O => ImmExt(27)
    );
\ImmExt[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(28),
      I4 => ImmSrc(0),
      O => ImmExt(28)
    );
\ImmExt[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(29),
      I4 => ImmSrc(0),
      O => ImmExt(29)
    );
\ImmExt[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ED48"
    )
        port map (
      I0 => ImmSrc(1),
      I1 => Instr(9),
      I2 => ImmSrc(0),
      I3 => Instr(22),
      I4 => ImmSrc(2),
      O => ImmExt(2)
    );
\ImmExt[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => Instr(31),
      I1 => ImmSrc(1),
      I2 => ImmSrc(2),
      I3 => Instr(30),
      I4 => ImmSrc(0),
      O => ImmExt(30)
    );
\ImmExt[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3070"
    )
        port map (
      I0 => ImmSrc(1),
      I1 => ImmSrc(2),
      I2 => Instr(31),
      I3 => ImmSrc(0),
      O => ImmExt(31)
    );
\ImmExt[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ED48"
    )
        port map (
      I0 => ImmSrc(1),
      I1 => Instr(10),
      I2 => ImmSrc(0),
      I3 => Instr(23),
      I4 => ImmSrc(2),
      O => ImmExt(3)
    );
\ImmExt[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ED48"
    )
        port map (
      I0 => ImmSrc(1),
      I1 => Instr(11),
      I2 => ImmSrc(0),
      I3 => Instr(24),
      I4 => ImmSrc(2),
      O => ImmExt(4)
    );
\ImmExt[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(25),
      I1 => ImmSrc(2),
      O => ImmExt(5)
    );
\ImmExt[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(26),
      I1 => ImmSrc(2),
      O => ImmExt(6)
    );
\ImmExt[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(27),
      I1 => ImmSrc(2),
      O => ImmExt(7)
    );
\ImmExt[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(28),
      I1 => ImmSrc(2),
      O => ImmExt(8)
    );
\ImmExt[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Instr(29),
      I1 => ImmSrc(2),
      O => ImmExt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RISCVPROJECT_immediate_extended_0_0 is
  port (
    Instr : in STD_LOGIC_VECTOR ( 31 downto 7 );
    ImmSrc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ImmExt : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RISCVPROJECT_immediate_extended_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_immediate_extended_0_0 : entity is "RISCVPROJECT_immediate_extended_0_0,immediate_extended,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_immediate_extended_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_immediate_extended_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RISCVPROJECT_immediate_extended_0_0 : entity is "immediate_extended,Vivado 2026.1";
end RISCVPROJECT_immediate_extended_0_0;

architecture STRUCTURE of RISCVPROJECT_immediate_extended_0_0 is
begin
inst: entity work.RISCVPROJECT_immediate_extended_0_0_immediate_extended
     port map (
      ImmExt(31 downto 0) => ImmExt(31 downto 0),
      ImmSrc(2 downto 0) => ImmSrc(2 downto 0),
      Instr(31 downto 7) => Instr(31 downto 7)
    );
end STRUCTURE;
