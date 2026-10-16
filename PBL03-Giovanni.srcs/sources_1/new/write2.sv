module write2 (
    input  logic [31:0] ALUResult,
    input  logic [31:0] ReadData,
    input  logic [31:0] PCPlus4,
    input  logic [1:0]  ResultSrc,
    output logic [31:0] Result
);

    always_comb begin
        case (ResultSrc)
            2'b00: Result = ALUResult;
            2'b01: Result = ReadData;
            2'b10: Result = PCPlus4;
            default: Result = 32'b0;
        endcase
    end

endmodule