// =============================================================================
// rv_genius_model.sv  -  modelo de referencia das REGRAS DO JOGO
// -----------------------------------------------------------------------------
// Enquanto o rv_ref_model diz "qual instrucao deveria ter dado qual resultado",
// este modelo diz "qual cor deveria acender e quanto o placar deveria valer".
// Sao dois niveis de abstracao diferentes, e os dois sao validos:
//   - nivel ISA  : verifica o PROCESSADOR (objetivo principal do PBL03)
//   - nivel jogo : verifica o SISTEMA (processador + programa + perifericos)
//
// Regras assumidas (inferidas do PDF + programa do PBL02; confirmar com o colega):
//   - PRNG = LFSR de 8 bits, semente 0xA5, taps 7,5,4,3; cor = estado[1:0].
//     A semente so e recarregada no reset, ou seja, o LFSR continua entre
//     partidas. (Isso deveria estar documentado na especificacao do colega.)
//   - Tamanho maximo: facil 8, medio 16, dificil 32 (sw[1:0] = 0, 1, 2/3).
//   - Pontos por acerto = peso_dificuldade(1/2/3) x (rapido ? 2 : 1).
// =============================================================================
class rv_genius_model extends uvm_object;
    `uvm_object_utils(rv_genius_model)

    bit [7:0] lfsr = 8'hA5;

    function new(string name = "rv_genius_model");
        super.new(name);
    endfunction

    function void reset();
        lfsr = 8'hA5;
    endfunction

    function bit [1:0] next_color();
        bit fb;
        fb = lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3];
        lfsr = {lfsr[6:0], fb};
        return lfsr[1:0];
    endfunction

    static function int max_len(bit [1:0] difficulty);
        return (difficulty == 0) ? 8 : (difficulty == 1) ? 16 : 32;
    endfunction

    static function int points_per_hit(bit [1:0] difficulty, bit fast);
        int w;
        w = (difficulty == 0) ? 1 : (difficulty == 1) ? 2 : 3;
        return fast ? 2 * w : w;
    endfunction

    // Cores RGB esperadas (tabela que o programa le de data.mem em 0x2020).
    static function bit [31:0] rgb(int color);
        case (color)
            0: return 32'h00FF0000;   // vermelho
            1: return 32'h0000FF00;   // verde
            2: return 32'h000000FF;   // azul
            default: return 32'h00FFFF00; // amarelo
        endcase
    endfunction
endclass
