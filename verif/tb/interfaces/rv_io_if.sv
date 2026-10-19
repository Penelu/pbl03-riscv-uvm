// =============================================================================
// rv_io_if.sv  -  pinos "do jogo": chaves, D-Pad e os 4 LEDs RGB
// -----------------------------------------------------------------------------
// E a visao BLACK-BOX: exatamente o que o jogador ve e toca na placa.
// Mapa (lido do data_memory.sv e confirmado no programa genius.mem):
//   switches[1:0] dificuldade  switches[2] rapido  switches[3] "mando eu"
//   switches[4]   START
//   dpad[i]       botao da cor i
//   ledN          valor RGB de 32 bits (0 = apagado)
// =============================================================================
interface rv_io_if (input logic clk);
    logic [31:0] switches;
    logic [3:0]  dpad;
    logic [31:0] led [4];
endinterface
