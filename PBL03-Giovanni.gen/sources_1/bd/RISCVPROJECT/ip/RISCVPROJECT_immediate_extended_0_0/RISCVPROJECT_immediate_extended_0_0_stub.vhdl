-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:06 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_immediate_extended_0_0/RISCVPROJECT_immediate_extended_0_0_stub.vhdl
-- Design      : RISCVPROJECT_immediate_extended_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCVPROJECT_immediate_extended_0_0 is
  Port ( 
    Instr : in STD_LOGIC_VECTOR ( 31 downto 7 );
    ImmSrc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ImmExt : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_immediate_extended_0_0 : entity is "RISCVPROJECT_immediate_extended_0_0,immediate_extended,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of RISCVPROJECT_immediate_extended_0_0 : entity is "RISCVPROJECT_immediate_extended_0_0,immediate_extended,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=immediate_extended,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_immediate_extended_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_immediate_extended_0_0 : entity is "module_ref";
end RISCVPROJECT_immediate_extended_0_0;

architecture stub of RISCVPROJECT_immediate_extended_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Instr[31:7],ImmSrc[2:0],ImmExt[31:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "immediate_extended,Vivado 2026.1";
begin
end;
