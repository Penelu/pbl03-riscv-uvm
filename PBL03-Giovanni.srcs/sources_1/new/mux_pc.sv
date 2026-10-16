module mux_pc (
    input  logic [31:0] PCPlus4,
    input  logic [31:0] PCTarget,
    input  logic        PCSrc,
    output logic [31:0] PCNext
);

    assign PCNext = PCSrc ? PCTarget : PCPlus4;

endmodule