module regfile (
    input  logic        clk,
    input  logic        WE3,
    input  logic [4:0]  A1,
    input  logic [4:0]  A2,
    input  logic [4:0]  A3,
    input  logic [31:0] WD3,
    output logic [31:0] RD1,
    output logic [31:0] RD2
);

    logic [31:0] rf [31:0];

    assign RD1 = (A1 != 0) ? rf[A1] : 32'b0;
    assign RD2 = (A2 != 0) ? rf[A2] : 32'b0;

    always_ff @(posedge clk) begin
        if (WE3 && (A3 != 0))
            rf[A3] <= WD3;
    end

endmodule