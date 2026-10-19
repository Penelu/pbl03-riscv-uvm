// =============================================================================
// rv_genius_game_seq.sv  -  um "jogador" que joga UMA partida de Genius
// -----------------------------------------------------------------------------
// CONCEITO: sequence REATIVA
//   A maioria das sequences so empurra estimulos. Esta precisa ESPERAR o DUT
//   (ver quais LEDs piscaram) antes de decidir o proximo botao. Ela le os
//   eventos de LED de um uvm_tlm_analysis_fifo alimentado pelo monitor.
//
// Ao mesmo tempo ela faz as checagens de NIVEL DE JOGO:
//   - a cor exibida e a prevista pelo rv_genius_model (LFSR)?
//   - o valor RGB e o da tabela?
//   - a duracao do LED corresponde a velocidade escolhida?
//   - o placar final (registrador s7 = x23) bate com as regras?
//   - depois do game over, os LEDs ficam quietos?
//
// Fluxo de uma partida (modo Siga):
//   START -> [rodada r: observa r LEDs -> aperta r botoes] x rounds
//         -> observa a rodada seguinte -> erra de proposito -> confere placar
// No modo "Mando eu", o jogador escolhe a nova cor antes de cada exibicao.
// =============================================================================
class rv_genius_game_seq extends uvm_sequence #(rv_io_item);
    `uvm_object_utils(rv_genius_game_seq)

    // --- configuracao da partida ---------------------------------------------
    bit [1:0]    difficulty    = 0;
    bit          fast          = 0;
    bit          manual        = 0;
    int unsigned rounds        = 3;    // rodadas acertadas antes de errar
    int unsigned press_cycles  = 20;   // quanto tempo o jogador segura o botao
    int unsigned gap_cycles    = 40;   // pausa entre botoes
    // Depois do ultimo LED apagar, o programa ainda espera o "tempo apagado"
    // (8 ticks) antes de ler o D-Pad. A leitura e por NIVEL e nao ha latch:
    // um aperto curto antes disso e PERDIDO. Por isso o jogador espera.
    int unsigned post_display_cycles = 40;
    int unsigned led_timeout   = 5000;
    // Duracao esperada do LED, em ciclos (programa usa o contador RTC).
    // ATENCAO: a spec pede 2 s / 1 s; o programa usa 40 / 20 ciclos
    // (tempo escalado para simulacao). Pergunta em aberto para o colega.
    int unsigned slow_ticks    = 40;
    int unsigned fast_ticks    = 20;

    // --- handles fornecidos pelo teste ---------------------------------------
    rv_genius_model                       game;
    uvm_tlm_analysis_fifo #(rv_led_item)  led_fifo;
    virtual rv_ctrl_if                    ctrl_vif;

    // --- resultados -------------------------------------------------------------
    int unsigned expected_score, n_errors, n_led_checked;
    int unsigned width_sum, width_n;
    bit          aborted;

    function new(string name = "rv_genius_game_seq");
        super.new(name);
    endfunction

    function string cfg_str();
        return $sformatf("%s/%s/%s", manual ? "MandoEu" : "Siga",
                         difficulty == 0 ? "facil" : difficulty == 1 ? "medio" : "dificil",
                         fast ? "rapido" : "lento");
    endfunction

    function void fail(string id, string msg);
        n_errors++;
        `uvm_error(id, {"[", cfg_str(), "] ", msg})
    endfunction

    // ---------------------------------------------------------------- estimulos
    task do_io(rv_io_cmd_e cmd, bit [31:0] sw = 0, bit [1:0] color = 0, int unsigned hold = 1);
        rv_io_item it;
        it = rv_io_item::type_id::create("it");
        start_item(it);
        it.cmd = cmd; it.switches = sw; it.color = color; it.hold_cycles = hold;
        finish_item(it);
    endtask

    task press(bit [1:0] color);
        do_io(IO_PRESS, 0, color, press_cycles);
        do_io(IO_IDLE, 0, 0, gap_cycles);
    endtask

    // --------------------------------------------------------------- observacao
    // Espera o proximo pulso de LED (com timeout) e confere cor/RGB/duracao.
    task expect_led(int unsigned exp_color, int unsigned step, int unsigned round);
        rv_led_item ev;
        bit got;
        int unsigned exp_ticks;
        got = 0;
        exp_ticks = fast ? fast_ticks : slow_ticks;
        fork begin
            fork
                begin led_fifo.get(ev); got = 1; end
                repeat (led_timeout) @(posedge ctrl_vif.clk);
            join_any
            disable fork;
        end join
        if (!got) begin
            fail("GAME_TIMEOUT", $sformatf("rodada %0d passo %0d: LED esperado nao acendeu em %0d ciclos",
                                           round, step, led_timeout));
            aborted = 1;
            return;
        end
        n_led_checked++;
        width_sum += ev.on_cycles; width_n++;
        if (ev.color != exp_color)
            fail("GAME_COLOR", $sformatf("rodada %0d passo %0d: acendeu LED%0d, esperado LED%0d",
                                         round, step, ev.color, exp_color));
        if (ev.rgb !== rv_genius_model::rgb(ev.color))
            fail("GAME_RGB", $sformatf("LED%0d com RGB %06h, esperado %06h",
                                       ev.color, ev.rgb, rv_genius_model::rgb(ev.color)));
        if (ev.on_cycles < exp_ticks || ev.on_cycles > exp_ticks + 15)
            fail("GAME_SPEED", $sformatf("LED aceso por %0d ciclos, esperado ~%0d",
                                         ev.on_cycles, exp_ticks));
    endtask

    // ------------------------------------------------------------------- partida
    task body();
        bit [1:0]    seq_colors[$];
        int unsigned max_len, pts, played;
        bit          win;
        logic [31:0] score;
        max_len = rv_genius_model::max_len(difficulty);
        pts     = rv_genius_model::points_per_hit(difficulty, fast);
        played  = (rounds > max_len) ? max_len : rounds;
        win     = (played == max_len);

        `uvm_info("GAME", $sformatf("=== Partida %s: %0d rodadas%s ===", cfg_str(), played,
                                    win ? " (vitoria)" : " + erro proposital"), UVM_LOW)
        led_fifo.flush();

        // START + configuracao nas chaves
        do_io(IO_PULSE_SWITCHES, {27'd0, 1'b1, manual, fast, difficulty}, 0, 30);

        for (int r = 1; r <= played + (win ? 0 : 1); r++) begin
            // nova cor: gerada pelo jogo (Siga) ou escolhida pelo jogador (Mando eu)
            if (manual) begin
                bit [1:0] c = $urandom_range(0, 3);
                press(c);
                seq_colors.push_back(c);
            end else
                seq_colors.push_back(game.next_color());

            // o processador exibe a sequencia inteira
            foreach (seq_colors[i]) begin
                expect_led(seq_colors[i], i + 1, r);
                if (aborted) return;
            end
            do_io(IO_IDLE, 0, 0, post_display_cycles);

            if (r > played) begin
                // rodada extra: erra de proposito na primeira cor
                press(seq_colors[0] + 2'd1);
                break;
            end
            foreach (seq_colors[i]) begin
                press(seq_colors[i]);
                expected_score += pts;
            end
        end

        // Game over: o placar fica em s7 (x23). Nao ha display de 7 segmentos
        // no hardware do colega, entao lemos o registrador por backdoor.
        do_io(IO_IDLE, 0, 0, 200);
        score = ctrl_vif.reg_read(23);
        if (score !== expected_score)
            fail("GAME_SCORE", $sformatf("placar (x23) = %0d, esperado %0d", score, expected_score));
        else
            `uvm_info("GAME", $sformatf("placar final %0d confere", score), UVM_LOW)
        if (led_fifo.used() != 0)
            fail("GAME_QUIET", $sformatf("%0d LEDs piscaram depois do game over", led_fifo.used()));
    endtask
endclass
