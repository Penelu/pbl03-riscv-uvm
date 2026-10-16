module decoder_control (
    input  logic [6:0] opcode,
    input  logic [2:0] funct3,
    input  logic       funct7b5,
    input  logic       Zero,
    input  logic       LessSigned,
    input  logic       LessUnsigned,

    output logic       RegWrite,
    output logic [2:0] ImmSrc,
    output logic       ALUSrc,
    output logic [1:0] ALUASrc,
    output logic       MemWrite,
    output logic [1:0] ResultSrc,
    output logic       PCSrc,
    output logic       IsJalr,
    output logic [2:0] ALUControl
);

    logic [1:0] ALUOp;
    logic Branch;
    logic Jump;
    logic BranchTaken;

    always_comb begin
        RegWrite  = 1'b0;
        ImmSrc    = 3'b000; // I
        ALUSrc    = 1'b0;
        ALUASrc   = 2'b00;  // RD1
        MemWrite  = 1'b0;
        ResultSrc = 2'b00;  // ALUResult
        Branch    = 1'b0;
        ALUOp     = 2'b00;  // ADD
        Jump      = 1'b0;
        IsJalr    = 1'b0;

        case (opcode)
            7'b0000011: begin // LB / LW
                if (funct3 == 3'b000 || funct3 == 3'b010) begin
                    RegWrite  = 1'b1;
                    ImmSrc    = 3'b000;
                    ALUSrc    = 1'b1;
                    ResultSrc = 2'b01; // memory
                    ALUOp     = 2'b00;
                end
            end
            7'b0100011: begin // SB / SW
                if (funct3 == 3'b000 || funct3 == 3'b010) begin
                    ImmSrc   = 3'b001;
                    ALUSrc   = 1'b1;
                    MemWrite = 1'b1;
                    ALUOp    = 2'b00;
                end
            end
            7'b0110011: begin // R-type
                RegWrite = 1'b1;
                ALUOp    = 2'b10;
            end
            7'b0010011: begin // I-type arithmetic: ADDI/ANDI/SLLI/SRLI
                RegWrite = 1'b1;
                ImmSrc   = 3'b000;
                ALUSrc   = 1'b1;
                ALUOp    = 2'b10;
            end
            7'b1100011: begin // BEQ/BNE/BGE/BLTU
                Branch = 1'b1;
                ImmSrc = 3'b010;
                ALUOp  = 2'b01; // SUB for Zero comparison
            end
            7'b1101111: begin // JAL
                RegWrite  = 1'b1;
                ImmSrc    = 3'b011;
                ResultSrc = 2'b10; // PC+4
                Jump      = 1'b1;
            end
            7'b1100111: begin // JALR
                if (funct3 == 3'b000) begin
                    RegWrite  = 1'b1;
                    ImmSrc    = 3'b000;
                    ResultSrc = 2'b10; // PC+4
                    Jump      = 1'b1;
                    IsJalr    = 1'b1;
                end
            end
            7'b0110111: begin // LUI = 0 + immediate
                RegWrite  = 1'b1;
                ImmSrc    = 3'b100;
                ALUSrc    = 1'b1;
                ALUASrc   = 2'b10;
            end
            7'b0010111: begin // AUIPC = PC + immediate
                RegWrite  = 1'b1;
                ImmSrc    = 3'b100;
                ALUSrc    = 1'b1;
                ALUASrc   = 2'b01;
            end
            // ECALL (1110011) is currently NOT implemented.
            default: ;
        endcase
    end

    always_comb begin
        ALUControl = 3'b000; // ADD
        case (ALUOp)
            2'b01: ALUControl = 3'b001; // SUB for comparisons
            2'b10: begin
                case (funct3)
                    3'b000: ALUControl = (opcode == 7'b0110011 && funct7b5)
                                         ? 3'b001 : 3'b000; // SUB or ADD/ADDI
                    3'b001: ALUControl = 3'b110; // SLL/SLLI
                    3'b010: ALUControl = 3'b101; // SLT/SLTI
                    3'b100: ALUControl = 3'b100; // XOR/XORI
                    3'b101: ALUControl = 3'b111; // SRL/SRLI; SRA not implemented
                    3'b110: ALUControl = 3'b011; // OR/ORI
                    3'b111: ALUControl = 3'b010; // AND/ANDI
                    default: ALUControl = 3'b000;
                endcase
            end
            default: ALUControl = 3'b000;
        endcase
    end

    always_comb begin
        BranchTaken = 1'b0;
        if (Branch) begin
            case (funct3)
                3'b000: BranchTaken = Zero;           // BEQ
                3'b001: BranchTaken = !Zero;          // BNE
                3'b101: BranchTaken = !LessSigned;    // BGE
                3'b110: BranchTaken = LessUnsigned;   // BLTU
                default: BranchTaken = 1'b0;
            endcase
        end
    end

    assign PCSrc = BranchTaken | Jump;
endmodule
