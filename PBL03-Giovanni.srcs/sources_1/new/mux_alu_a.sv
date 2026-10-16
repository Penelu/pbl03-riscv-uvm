module mux_alu_a (
    input  logic [31:0] RD1,
    input  logic [31:0] PC,
    input  logic [1:0] ALUASrc,
    output logic [31:0] SrcA
);
    always_comb begin
        case (ALUASrc)
            2'b00: SrcA = RD1;
            2'b01: SrcA = PC;
            2'b10: SrcA = 32'd0;
            default: SrcA = 32'd0;
        endcase
    end
endmodule
