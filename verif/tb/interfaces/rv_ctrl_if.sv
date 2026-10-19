// =============================================================================
// rv_ctrl_if.sv  -  reset + acesso "backdoor" as memorias do DUT
// -----------------------------------------------------------------------------
// CONCEITO: frontdoor x backdoor
//   - Frontdoor = falar com o DUT pelos pinos, como o hardware real faria.
//   - Backdoor  = ler/escrever diretamente um array interno do RTL por
//                 referencia hierarquica, em tempo zero de simulacao.
//
// O processador do colega le o programa com $readmemh("genius.mem") e nao tem
// nenhuma porta para gravar a memoria de instrucoes. Para rodar programas
// aleatorios, a unica saida e o backdoor. As funcoes ficam numa interface
// porque classes UVM (que vivem em pacotes) nao podem usar caminhos
// hierarquicos; elas recebem esta interface como "virtual interface".
//
// Os caminhos abaixo dependem dos nomes do block design do colega
// (RISCVPROJECT_i / instr_mem_0 / inst ...). Se ele regenerar o BD e os
// nomes mudarem, so este arquivo precisa ser ajustado.
// =============================================================================
`define RV_DUT rv_tb_top.dut.RISCVPROJECT_i

interface rv_ctrl_if (input logic clk);
    logic        rst;   // reset ativo em ALTO (como o PC.sv do colega)
    logic [31:0] pc;    // copia do PC, so para o driver saber onde o programa esta

    function automatic void imem_write(int idx, logic [31:0] w);
        `RV_DUT.instr_mem_0.inst.RAM[idx] = w;
    endfunction
    function automatic logic [31:0] imem_read(int idx);
        return `RV_DUT.instr_mem_0.inst.RAM[idx];
    endfunction

    function automatic void dmem_write(int addr, logic [7:0] b);
        `RV_DUT.data_memory_0.inst.RAM[addr] = b;
    endfunction
    function automatic logic [7:0] dmem_read(int addr);
        return `RV_DUT.data_memory_0.inst.RAM[addr];
    endfunction

    // Le o banco de registradores (ex.: x23 = s7 guarda o placar do jogo).
    function automatic logic [31:0] reg_read(int r);
        return (r == 0) ? 32'd0 : `RV_DUT.regfile_0.inst.rf[r];
    endfunction
endinterface
