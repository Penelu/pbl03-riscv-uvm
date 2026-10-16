module instr_mem (
    input  logic [31:0] A,
    output logic [31:0] RD
);
    logic [31:0] RAM [0:255];
    initial $readmemh("genius.mem", RAM);
    assign RD = RAM[A[31:2]];
endmodule
