// =============================================================================
// rv_prog_base_seq.sv  -  base para sequences que montam programas
// -----------------------------------------------------------------------------
// CONCEITO UVM: sequence
//   Uma sequence gera itens no body() e os envia com
//      start_item(req); ...preenche/randomiza...; finish_item(req);
//   finish_item so retorna quando o driver chama item_done(), ou seja, quando
//   o programa terminou de rodar.
//
// Esta classe base oferece um "mini assembler":
//   emit(op, rd, rs1, rs2, imm)  -> acrescenta uma instrucao
//   li(rd, valor)                -> carrega constante de 32 bits (lui + addi)
//   finish()                     -> NOPs + laco final "jal x0, 0"
// As subclasses so implementam build_program().
// =============================================================================
class rv_prog_base_seq extends uvm_sequence #(rv_prog_item);
    `uvm_object_utils(rv_prog_base_seq)

    rv_prog_item p;

    function new(string name = "rv_prog_base_seq");
        super.new(name);
    endfunction

    function int unsigned here();           // endereco da proxima instrucao
        return p.imem.size() * 4;
    endfunction

    function void emit(rv_op_e op, bit [4:0] rd = 0, bit [4:0] rs1 = 0,
                       bit [4:0] rs2 = 0, int imm = 0);
        p.imem.push_back(encode(op, rd, rs1, rs2, imm));
    endfunction

    // Expansao padrao do pseudo "li": addi soma com sinal, entao o "hi"
    // precisa ser arredondado (+0x800) para compensar.
    function void li(bit [4:0] rd, bit [31:0] v);
        bit [31:0] hi, lo;
        hi = (v + 32'h800) >> 12;
        lo = v - (hi << 12);
        emit(LUI,  rd, 0, 0, hi);
        emit(ADDI, rd, rd, 0, $signed(lo[11:0]));
    endfunction

    function void finish();
        repeat (5) p.imem.push_back(NOP);   // alvo seguro para desvios no fim
        p.end_pc = here();
        p.imem.push_back(SELF_LOOP);
        if (p.imem.size() > 256)
            `uvm_fatal("PROG_SIZE", $sformatf("%0d palavras: a memoria de instrucoes do DUT tem 256",
                                              p.imem.size()))
    endfunction

    virtual function void build_program();
    endfunction

    task body();
        p = rv_prog_item::type_id::create("p");
        start_item(p);
        build_program();
        finish_item(p);
    endtask
endclass
