-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Wed Oct 14 15:50:19 2026
-- Host        : DESKTOP-9ELRCFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/giova/PBL03-Cimatec/PBL03-Cimatec.gen/sources_1/bd/RISCVPROJECT/ip/RISCVPROJECT_alu_0_0/RISCVPROJECT_alu_0_0_stub.vhdl
-- Design      : RISCVPROJECT_alu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCVPROJECT_alu_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero : out STD_LOGIC;
    LessSigned : out STD_LOGIC;
    LessUnsigned : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RISCVPROJECT_alu_0_0 : entity is "RISCVPROJECT_alu_0_0,alu,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of RISCVPROJECT_alu_0_0 : entity is "RISCVPROJECT_alu_0_0,alu,{x_ipProduct=Vivado 2026.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=alu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RISCVPROJECT_alu_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RISCVPROJECT_alu_0_0 : entity is "module_ref";
end RISCVPROJECT_alu_0_0;

architecture stub of RISCVPROJECT_alu_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],ALUControl[2:0],Result[31:0],Zero,LessSigned,LessUnsigned";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "alu,Vivado 2026.1";
begin
end;
