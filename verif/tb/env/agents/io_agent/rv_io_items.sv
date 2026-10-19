// =============================================================================
// rv_io_items.sv  -  transacoes do agente de E/S (jogador <-> placa)
// -----------------------------------------------------------------------------
// rv_io_item  : ESTIMULO (sequence -> driver). Uma acao do jogador.
// rv_led_item : OBSERVACAO (monitor -> quem escutar). Um pulso de LED completo.
// =============================================================================
typedef enum {IO_PULSE_SWITCHES, IO_PRESS, IO_IDLE} rv_io_cmd_e;

class rv_io_item extends uvm_sequence_item;
    rand rv_io_cmd_e  cmd;
    rand bit [31:0]   switches;     // IO_PULSE_SWITCHES: valor durante o pulso
    rand bit [1:0]    color;        // IO_PRESS: qual botao
    rand int unsigned hold_cycles;  // quanto tempo segura

    constraint c_hold { hold_cycles inside {[1:1000]}; }

    `uvm_object_utils(rv_io_item)
    function new(string name = "rv_io_item");
        super.new(name);
    endfunction

    function string convert2string();
        case (cmd)
            IO_PULSE_SWITCHES: return $sformatf("SWITCHES=0x%02h por %0d ciclos", switches, hold_cycles);
            IO_PRESS:          return $sformatf("BOTAO %0d por %0d ciclos", color, hold_cycles);
            default:           return $sformatf("ESPERA %0d ciclos", hold_cycles);
        endcase
    endfunction
endclass

class rv_led_item extends uvm_sequence_item;
    int unsigned color;
    bit [31:0]   rgb;
    int unsigned on_cycles;   // largura do pulso em ciclos de clock
    time         t_on;

    `uvm_object_utils(rv_led_item)
    function new(string name = "rv_led_item");
        super.new(name);
    endfunction

    function string convert2string();
        return $sformatf("LED%0d rgb=%06h aceso %0d ciclos (t=%0t)", color, rgb, on_cycles, t_on);
    endfunction
endclass
