`timescale 1ns / 1ps
// Implementacao de simulacao para o IP Xilinx Slice v1.0 rev 5.
// Use APENAS em Simulation Sources (sim_1), nunca em Design Sources.
// Faz o mesmo recorte de bits do IP de acordo com seus parametros.
module xlslice_v1_0_5_xlslice #(
    parameter integer C_DIN_WIDTH  = 32,
    parameter integer C_DIN_FROM   = 31,
    parameter integer C_DIN_TO     = 0,
    parameter integer C_DOUT_WIDTH = C_DIN_FROM - C_DIN_TO + 1
)(
    input  wire [C_DIN_WIDTH-1:0]  Din,
    output wire [C_DOUT_WIDTH-1:0] Dout
);
    assign Dout = Din[C_DIN_FROM:C_DIN_TO];
endmodule
