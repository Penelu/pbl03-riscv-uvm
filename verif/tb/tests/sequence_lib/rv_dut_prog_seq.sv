// =============================================================================
// rv_dut_prog_seq.sv  -  roda o programa ORIGINAL do colega (genius.mem)
// -----------------------------------------------------------------------------
// Nao grava nada: o DUT ja carregou genius.mem e data.mem com $readmemh.
// O driver so aplica reset, tira o snapshot (para o modelo de referencia) e
// solta o reset. Como o jogo nunca "termina", wait_for_end = 0.
// =============================================================================
class rv_dut_prog_seq extends rv_prog_base_seq;
    `uvm_object_utils(rv_dut_prog_seq)

    function new(string name = "rv_dut_prog_seq");
        super.new(name);
    endfunction

    function void build_program();
        p.prog_name     = "genius.mem (programa do colega)";
        p.use_dut_image = 1;
        p.wait_for_end  = 0;
    endfunction
endclass
