//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (lin64) Build 6511674 Tue Jun 16 11:01:26 MDT 2026
//Date        : Fri Oct 16 10:44:00 2026
//Host        : Breniak-Work running 64-bit Ubuntu 26.04.1 LTS
//Command     : generate_target RISCVPROJECT_wrapper.bd
//Design      : RISCVPROJECT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCVPROJECT_wrapper
   (clk_0,
    dpad_in_0,
    led0_out_0,
    led1_out_0,
    led2_out_0,
    led3_out_0,
    reset_0,
    switches_in_0);
  input clk_0;
  input [3:0]dpad_in_0;
  output [31:0]led0_out_0;
  output [31:0]led1_out_0;
  output [31:0]led2_out_0;
  output [31:0]led3_out_0;
  input reset_0;
  input [31:0]switches_in_0;

  wire clk_0;
  wire [3:0]dpad_in_0;
  wire [31:0]led0_out_0;
  wire [31:0]led1_out_0;
  wire [31:0]led2_out_0;
  wire [31:0]led3_out_0;
  wire reset_0;
  wire [31:0]switches_in_0;

  RISCVPROJECT RISCVPROJECT_i
       (.clk_0(clk_0),
        .dpad_in_0(dpad_in_0),
        .led0_out_0(led0_out_0),
        .led1_out_0(led1_out_0),
        .led2_out_0(led2_out_0),
        .led3_out_0(led3_out_0),
        .reset_0(reset_0),
        .switches_in_0(switches_in_0));
endmodule
