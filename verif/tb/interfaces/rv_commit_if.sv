// =============================================================================
// rv_commit_if.sv  -  "o que o processador acabou de executar"
// -----------------------------------------------------------------------------
// CONCEITO: verificacao white-box de processador
//   Olhando so os LEDs, um erro numa instrucao pode levar milhares de ciclos
//   para aparecer (ou nunca aparecer). Por isso, em verificacao de CPU, quase
//   sempre se observa o "commit" (retire): a cada instrucao concluida, qual era
//   o PC, a instrucao, o registrador escrito, o valor escrito, a escrita em
//   memoria e o proximo PC. (No mundo RISC-V isso e padronizado como RVFI.)
//
//   O processador do colega e MONOCICLO: em toda borda de subida sem reset,
//   exatamente uma instrucao termina. Logo basta amostrar estes sinais na borda.
//
// Os sinais sao ligados no rv_tb_top por "assign" hierarquico a fios internos
// do block design (ex.: dut.RISCVPROJECT_i.pc_0_PC). Uma alternativa mais
// elegante e o "bind" do SystemVerilog; o assign foi escolhido por ser mais
// facil de ler para quem esta aprendendo.
//
// CONCEITO: clocking block
//   "default input #1step" amostra os sinais IMEDIATAMENTE ANTES da borda.
//   Sem isso, o monitor poderia ler o PC ja atualizado (condicao de corrida
//   entre o always_ff do DUT e o codigo do testbench).
// =============================================================================
interface rv_commit_if (input logic clk);
    logic        rst;
    logic [31:0] pc;         // PC da instrucao que esta terminando
    logic [31:0] instr;      // instrucao lida da memoria
    logic        reg_we;     // RegWrite
    logic [31:0] rd_wdata;   // valor que vai para rd (saida do mux write2)
    logic [31:0] rs1_val;    // RD1 do banco de registradores
    logic [31:0] rs2_val;    // RD2
    logic        mem_we;     // MemWrite
    logic [31:0] mem_addr;   // endereco de dados (saida da ALU)
    logic [31:0] mem_wdata;  // dado escrito (RD2)
    logic [31:0] mem_rdata;  // dado lido (RD da data_memory)
    logic [31:0] pc_next;    // proximo PC escolhido pelo mux

    clocking mon_cb @(posedge clk);
        default input #1step;
        input rst, pc, instr, reg_we, rd_wdata, rs1_val, rs2_val,
              mem_we, mem_addr, mem_wdata, mem_rdata, pc_next;
    endclocking
endinterface
