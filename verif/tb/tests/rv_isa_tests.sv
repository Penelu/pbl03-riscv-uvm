// =============================================================================
// rv_isa_tests.sv  -  testes no NIVEL ISA (verificam o processador)
// -----------------------------------------------------------------------------
// rv_isa_directed_test : 1 programa escrito a mao (sanidade, comece por aqui)
// rv_isa_random_test   : N programas aleatorios so com instrucoes que o DUT
//                        diz suportar.            Esperado: PASSAR.
// rv_isa_rv32i_test    : igual, mas com TODAS as instrucoes RV32I.
//                        Esperado: FALHAR, mostrando o que falta no DUT.
//
// CONCEITO UVM: heranca de testes
//   rv_isa_rv32i_test so muda UM parametro do teste aleatorio. Reaproveitar por
//   heranca e o jeito UVM de criar variacoes sem copiar codigo.
// =============================================================================
class rv_isa_directed_test extends rv_base_test;
    `uvm_component_utils(rv_isa_directed_test)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    task run_scenario();
        rv_directed_prog_seq seq = rv_directed_prog_seq::type_id::create("seq");
        seq.start(env.prog_agt.sqr);
    endtask
endclass

class rv_isa_random_test extends rv_base_test;
    `uvm_component_utils(rv_isa_random_test)

    int unsigned n_progs  = 10;   // +N_PROGS=<n>
    int unsigned n_instr  = 150;  // +N_INSTR=<n>
    bit          only_dut_supported = 1;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        void'($value$plusargs("N_PROGS=%d", n_progs));
        void'($value$plusargs("N_INSTR=%d", n_instr));
    endfunction

    task run_scenario();
        for (int i = 0; i < n_progs; i++) begin
            rv_random_prog_seq seq = rv_random_prog_seq::type_id::create($sformatf("seq%0d", i));
            seq.n_instr            = n_instr;
            seq.only_dut_supported = only_dut_supported;
            seq.prog_id            = i;
            seq.start(env.prog_agt.sqr);
        end
    endtask
endclass

class rv_isa_rv32i_test extends rv_isa_random_test;
    `uvm_component_utils(rv_isa_rv32i_test)

    function new(string name, uvm_component parent);
        super.new(name, parent);
        only_dut_supported = 0;
    endfunction
endclass
