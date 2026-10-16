module pc_target (
    input  logic [31:0] PC,
    input  logic [31:0] ImmExt,
    input  logic [31:0] RD1,
    input  logic        IsJalr,
    output logic [31:0] PCTarget
);
    always_comb begin
        if (IsJalr)
            PCTarget = (RD1 + ImmExt) & 32'hFFFFFFFE;
        else
            PCTarget = PC + ImmExt;
    end
endmodule
