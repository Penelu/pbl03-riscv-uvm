// =============================================================================
// rv_genius_tests.sv  -  testes no NIVEL DE SISTEMA (o jogo de verdade)
// -----------------------------------------------------------------------------
// Roda o genius.mem ORIGINAL do colega. Duas verificacoes ao mesmo tempo:
//   1) o scoreboard ISA continua comparando CADA instrucao com o modelo
//      (o processador executa o programa real corretamente?);
//   2) a sequence do jogador confere cores, RGB, velocidade e placar
//      (o sistema se comporta como a especificacao do Genius pede?).
//
// rv_genius_test            : varias partidas cobrindo dificuldade, velocidade
//                             e modo. +GENIUS_FULL joga todas as rodadas.
// rv_genius_long_press_test : jogador segura o botao por mais tempo, como uma
//                             pessoa real faria. Revela se o programa trata a
//                             tecla por nivel ou por borda.
// =============================================================================
class rv_genius_test extends rv_base_test;
    `uvm_component_utils(rv_genius_test)

    rv_genius_model game;
    bit             full;
    int unsigned    press_cycles = 20;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        game = rv_genius_model::type_id::create("game");
        full = $test$plusargs("GENIUS_FULL");
    endfunction

    task play(bit [1:0] diff, bit fast, bit manual, int unsigned rounds);
        rv_genius_game_seq g = rv_genius_game_seq::type_id::create("game_seq");
        virtual rv_ctrl_if cvif;
        void'(uvm_config_db#(virtual rv_ctrl_if)::get(this, "", "ctrl_vif", cvif));
        g.difficulty   = diff;
        g.fast         = fast;
        g.manual       = manual;
        g.rounds       = rounds;
        g.press_cycles = press_cycles;
        g.game         = game;
        g.led_fifo     = env.led_fifo;
        g.ctrl_vif     = cvif;
        g.start(env.io_agt.sqr);
    endtask

    task run_scenario();
        rv_dut_prog_seq boot = rv_dut_prog_seq::type_id::create("boot");
        boot.start(env.prog_agt.sqr);     // reset + snapshot de genius.mem
        game.reset();

        play(0, 0, 0, 8);                       // Siga facil lento ate vencer (8)
        play(1, 1, 0, full ? 16 : 5);           // Siga medio rapido
        play(2, 1, 0, full ? 32 : 6);           // Siga dificil rapido
        play(2, 0, 0, 3);                       // dificil lento (peso 3 x 1)
        play(0, 1, 1, 4);                       // Mando eu facil rapido
        play(1, 0, 1, 3);                       // Mando eu medio lento
    endtask
endclass

class rv_genius_long_press_test extends rv_genius_test;
    `uvm_component_utils(rv_genius_long_press_test)

    function new(string name, uvm_component parent);
        super.new(name, parent);
        press_cycles = 300;   // ~3 us a 100 MHz. Um dedo humano fica ~100 ms!
    endfunction

    task run_scenario();
        rv_dut_prog_seq boot = rv_dut_prog_seq::type_id::create("boot");
        boot.start(env.prog_agt.sqr);
        game.reset();
        play(0, 0, 0, 4);
    endtask
endclass
