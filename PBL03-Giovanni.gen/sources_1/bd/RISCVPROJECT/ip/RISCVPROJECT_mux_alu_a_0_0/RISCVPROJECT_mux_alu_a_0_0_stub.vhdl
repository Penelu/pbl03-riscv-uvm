-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:06 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/RISCVPROJECT_mux_alu_a_0_0_stub.vhdl
-- Design      : RISCVPROJECT_mux_alu_a_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCVPROJECT_mux_alu_a_0_0 is
  Port ( 
    RD1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUASrc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SrcA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_mux_alu_a_0_0 : entity is "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of RISCVPROJECT_mux_alu_a_0_0 : entity is "RISCVPROJECT_mux_alu_a_0_0,mux_alu_a,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux_alu_a,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_mux_alu_a_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_mux_alu_a_0_0 : entity is "module_ref";
end RISCVPROJECT_mux_alu_a_0_0;

architecture stub of RISCVPROJECT_mux_alu_a_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "RD1[31:0],PC[31:0],ALUASrc[1:0],SrcA[31:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "mux_alu_a,Vivado 2026.1";
begin
end;
