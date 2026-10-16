module data_memory (
    input  logic        clk,
    input  logic        WE,
    input  logic [2:0]  funct3,
    input  logic [31:0] A,
    input  logic [31:0] WD,
    input  logic [31:0] switches_in,
    input  logic [3:0]  dpad_in,   // [0]=UP, [1]=DOWN, [2]=LEFT, [3]=RIGHT
    output logic [31:0] RD,
    output logic [31:0] led0_out, // LED at F0000000
    output logic [31:0] led1_out, // LED at F0000004
    output logic [31:0] led2_out, // LED at F0000008
    output logic [31:0] led3_out  // LED at F000000C
);

    // Byte-addressable, 16 KiB of RAM, physical range 0x00000000..0x00003FFF.
    logic [7:0] RAM [0:16383];
    logic [31:0] rtc_counter;

    initial begin
        // The current program has exactly 48 data bytes at 0x2000..0x202F.
        $readmemh("data.mem", RAM, 8192, 8239);
        rtc_counter = 32'd0;
        led0_out = 32'd0;
        led1_out = 32'd0;
        led2_out = 32'd0;
        led3_out = 32'd0;
    end

    // Asynchronous reads; unmapped MMIO reads return 0.
    always_comb begin
        RD = 32'd0;
        case (A)
            32'hF0000100: RD = switches_in;
            32'hF0000200: RD = {31'd0, dpad_in[0]};
            32'hF0000204: RD = {31'd0, dpad_in[1]};
            32'hF0000208: RD = {31'd0, dpad_in[2]};
            32'hF000020C: RD = {31'd0, dpad_in[3]};
            32'hF0000300: RD = rtc_counter;
            32'hF0000000: RD = led0_out;
            32'hF0000004: RD = led1_out;
            32'hF0000008: RD = led2_out;
            32'hF000000C: RD = led3_out;
            default: begin
                if (funct3 == 3'b000 && A < 32'd16384) begin
                    RD = {{24{RAM[A[13:0]][7]}}, RAM[A[13:0]]}; // LB
                end else if (funct3 == 3'b010 && A <= 32'd16380
                             && A[1:0] == 2'b00) begin
                    RD = {RAM[A[13:0]+14'd3], RAM[A[13:0]+14'd2],
                          RAM[A[13:0]+14'd1], RAM[A[13:0]]}; // LW
                end
            end
        endcase
    end

    // Write on clock edge; each LED has its own word address.
    always_ff @(posedge clk) begin
        rtc_counter <= rtc_counter + 32'd1;
        if (WE) begin
            case (A)
                32'hF0000000: led0_out <= WD;
                32'hF0000004: led1_out <= WD;
                32'hF0000008: led2_out <= WD;
                32'hF000000C: led3_out <= WD;
                default: begin
                    if (funct3 == 3'b000 && A < 32'd16384) begin
                        RAM[A[13:0]] <= WD[7:0]; // SB
                    end else if (funct3 == 3'b010 && A <= 32'd16380
                                 && A[1:0] == 2'b00) begin
                        RAM[A[13:0]]       <= WD[7:0];
                        RAM[A[13:0]+14'd1] <= WD[15:8];
                        RAM[A[13:0]+14'd2] <= WD[23:16];
                        RAM[A[13:0]+14'd3] <= WD[31:24]; // SW, little-endian
                    end
                end
            endcase
        end
    end
endmodule
