// =============================================================================
// rv_prog_item.sv  -  TRANSACAO do agente de programa
// -----------------------------------------------------------------------------
// CONCEITO UVM: sequence item (transacao)
//   E o "pacote de dados" que viaja da sequence ate o driver. Ele descreve O QUE
//   fazer, nunca COMO mexer nos pinos (isso e trabalho do driver).
//
//   Aqui a transacao e "rode este programa": palavras da memoria de instrucoes,
//   bytes iniciais da memoria de dados e como saber que terminou.
//
//   Depois que o driver carrega o programa, ele preenche img_imem/img_dmem com
//   uma copia (snapshot) do que ficou nas memorias do DUT e publica o item numa
//   analysis port. E assim que o scoreboard fica sabendo qual programa carregar
//   no modelo de referencia.
// =============================================================================
class rv_prog_item extends uvm_sequence_item;

    // --- preenchido pela sequence -------------------------------------------
    string       prog_name     = "prog";
    bit          use_dut_image = 0;   // 1 = nao sobrescreve (usa genius.mem/data.mem do colega)
    bit [31:0]   imem[$];             // programa, a partir do endereco 0
    bit [7:0]    dmem_init[int];      // endereco de dados -> byte
    bit          wait_for_end  = 1;   // 0 = so solta o reset e retorna (jogo roda "para sempre")
    bit [31:0]   end_pc;              // endereco do laco final "jal x0, 0"
    int unsigned timeout_cycles = 20000;

    // --- preenchido pelo driver (snapshot) ----------------------------------
    bit   [31:0] img_imem[256];
    logic [7:0]  img_dmem[16384];

    `uvm_object_utils(rv_prog_item)

    function new(string name = "rv_prog_item");
        super.new(name);
    endfunction

    function string convert2string();
        return $sformatf("%s: %0d palavras, %0d bytes de dados, end_pc=0x%0h%s",
                         prog_name, imem.size(), dmem_init.num(), end_pc,
                         use_dut_image ? " (imagem original do DUT)" : "");
    endfunction
endclass
