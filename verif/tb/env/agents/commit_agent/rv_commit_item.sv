// =============================================================================
// rv_commit_item.sv  -  uma instrucao concluida pelo DUT
// -----------------------------------------------------------------------------
// Transacao produzida pelo MONITOR (nao por sequence). E o que o scoreboard
// compara com o modelo de referencia e o que a cobertura amostra.
// =============================================================================
class rv_commit_item extends uvm_sequence_item;
    bit   [31:0] pc;
    bit   [31:0] instr;
    bit          reg_we;
    logic [31:0] rd_wdata;
    logic [31:0] rs1_val, rs2_val;
    bit          mem_we;
    bit   [31:0] mem_addr;
    logic [31:0] mem_wdata;
    logic [31:0] mem_rdata;
    bit   [31:0] pc_next;
    longint      cycle;

    `uvm_object_utils(rv_commit_item)

    function new(string name = "rv_commit_item");
        super.new(name);
    endfunction

    function bit [4:0] rd();
        return instr[11:7];
    endfunction

    function string convert2string();
        return $sformatf("PC=%08h %-26s we=%0b x%0d<=%08h mem_we=%0b [%08h]<=%08h next=%08h",
                         pc, rv_isa_pkg::disasm(instr), reg_we, rd(), rd_wdata,
                         mem_we, mem_addr, mem_wdata, pc_next);
    endfunction
endclass
