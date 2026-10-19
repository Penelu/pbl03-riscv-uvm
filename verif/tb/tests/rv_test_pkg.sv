// =============================================================================
// rv_test_pkg.sv  -  sequences + testes
// =============================================================================
package rv_test_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    import rv_isa_pkg::*;
    import rv_env_pkg::*;

    `include "sequence_lib/rv_prog_base_seq.sv"
    `include "sequence_lib/rv_directed_prog_seq.sv"
    `include "sequence_lib/rv_random_prog_seq.sv"
    `include "sequence_lib/rv_dut_prog_seq.sv"
    `include "sequence_lib/rv_genius_game_seq.sv"

    `include "rv_base_test.sv"
    `include "rv_isa_tests.sv"
    `include "rv_genius_tests.sv"
endpackage
