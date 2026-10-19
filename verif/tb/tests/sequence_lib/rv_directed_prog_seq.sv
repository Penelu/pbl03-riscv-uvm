// =============================================================================
// rv_directed_prog_seq.sv  -  programa DIRIGIDO (escrito a mao)
// -----------------------------------------------------------------------------
// CONCEITO: teste dirigido x aleatorio
//   Dirigido: voce escolhe cada instrucao para acertar um caso de canto que
//   conhece (ex.: "BGE com operandos iguais deve saltar"). Rapido de depurar,
//   mas so encontra os bugs que voce imaginou.
//   Aleatorio: ver rv_random_prog_seq.
//
// O scoreboard verifica cada instrucao automaticamente; aqui so precisamos
// GERAR situacoes interessantes, nao calcular os resultados esperados.
// =============================================================================
class rv_directed_prog_seq extends rv_prog_base_seq;
    `uvm_object_utils(rv_directed_prog_seq)

    function new(string name = "rv_directed_prog_seq");
        super.new(name);
    endfunction

    function void build_program();
        p.prog_name = "dirigido";

        // --- constantes de canto -----------------------------------------
        li(1, 32'h0000_0005);
        li(2, 32'hFFFF_FFFB);          // -5
        li(3, 32'h7FFF_FFFF);          // maior positivo
        li(4, 32'h8000_0000);          // menor negativo
        li(5, 32'h0000_1000);          // base da RAM de dados usada no teste
        li(28, 0);                     // acumulador dos testes de desvio
        emit(LUI,   6, 0, 0, 20'hABCDE);
        emit(AUIPC, 7, 0, 0, 20'h00001);

        // --- ALU registro-registro ---------------------------------------
        emit(ADD, 8, 1, 2);            // 5 + (-5) = 0
        emit(SUB, 9, 4, 1);            // overflow: 0x80000000 - 5
        emit(AND, 10, 3, 2);
        emit(OR,  11, 1, 4);
        emit(XOR, 12, 2, 3);
        emit(SLL, 13, 1, 1);           // 5 << 5
        emit(SRL, 14, 4, 1);           // logico: entra 0
        emit(SLT, 15, 2, 1);           // -5 < 5 -> 1
        emit(SLT, 16, 1, 2);           //  5 < -5 -> 0
        emit(ADD, 0, 1, 1);            // escrita em x0 deve ser ignorada

        // --- ALU com imediato --------------------------------------------
        emit(ADDI, 17, 0, 0, -2048);
        emit(ADDI, 18, 3, 0, 1);       // 0x7FFFFFFF + 1
        emit(ANDI, 19, 2, 0, 12'h0F0);
        emit(ORI,  20, 0, 0, -1);
        emit(XORI, 21, 1, 0, -1);      // NOT
        emit(SLTI, 22, 2, 0, -4);      // -5 < -4 -> 1
        emit(SLLI, 23, 1, 0, 31);
        emit(SRLI, 24, 4, 0, 31);

        // --- memoria (little-endian, extensao de sinal do LB) ------------
        emit(SW, 0, 5, 2, 0);          // [0x1000] = 0xFFFFFFFB
        emit(LW, 25, 5, 0, 0);
        emit(SW, 0, 5, 0, 4);          // zera [0x1004] (RAM nao inicializada = X)
        emit(SB, 0, 5, 1, 7);          // byte 0x05 em 0x1007
        emit(LB, 26, 5, 0, 0);         // 0xFB -> sinal -> 0xFFFFFFFB
        emit(LW, 27, 5, 0, 4);         // le palavra com o byte 0x05 no topo
        emit(SW, 0, 5, 4, -4);         // offset negativo

        // --- desvios: cada um com o caso tomado e o nao tomado ------------
        emit(BEQ,  0, 1, 1, 8);  emit(ADDI, 28, 0, 0, 1);   // tomado: pula o addi
        emit(BEQ,  0, 1, 2, 8);  emit(ADDI, 28, 28, 0, 2);  // nao tomado
        emit(BNE,  0, 1, 2, 8);  emit(ADDI, 28, 28, 0, 4);
        emit(BNE,  0, 1, 1, 8);  emit(ADDI, 28, 28, 0, 8);
        emit(BGE,  0, 1, 1, 8);  emit(ADDI, 28, 28, 0, 16); // iguais -> tomado
        emit(BGE,  0, 2, 1, 8);  emit(ADDI, 28, 28, 0, 32); // -5 >= 5? nao
        emit(BLTU, 0, 1, 2, 8);  emit(ADDI, 28, 28, 0, 64); // 5 <u 0xFFFFFFFB: tomado
        emit(BLTU, 0, 2, 1, 8);  emit(ADDI, 28, 28, 0, 128);
        emit(BEQ,  0, 0, 0, 8);  emit(ADDI, 28, 28, 0, 256); // x0 == x0: tomado

        // --- saltos ------------------------------------------------------
        emit(JAL, 29, 0, 0, 8);        // salva PC+4 em x29
        emit(ADDI, 30, 0, 0, 99);      // pulado
        // lui+addi (2 instr) + jalr + addi pulado -> alvo = here()+16.
        li(31, here() + 16 + 1);       // alvo IMPAR: JALR deve zerar o bit 0
        emit(JALR, 30, 31, 0, 0);
        emit(ADDI, 30, 0, 0, 99);      // pulado

        // --- MMIO: acende e apaga o LED0 ---------------------------------
        emit(LUI, 6, 0, 0, 20'hF0000);
        emit(SW, 0, 6, 1, 0);
        emit(SW, 0, 6, 0, 0);

        finish();
    endfunction
endclass
