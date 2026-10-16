`timescale 1ns / 1ps
module tb_riscv_genius;
    logic clk_0 = 1'b0;
    logic reset_0;
    logic [31:0] switches_in_0;
    logic [3:0] dpad_in_0;
    wire [31:0] led0_out_0, led1_out_0, led2_out_0, led3_out_0;
    logic [1:0] primeira_cor;
    wire algum_led = (led0_out_0 != 0 || led1_out_0 != 0 ||
                      led2_out_0 != 0 || led3_out_0 != 0);

    // Apos atualizar o HDL Wrapper, os nomes devem corresponder as portas externas.
    RISCVPROJECT_wrapper dut (
        .clk_0(clk_0),
        .reset_0(reset_0),
        .switches_in_0(switches_in_0),
        .dpad_in_0(dpad_in_0),
        .led0_out_0(led0_out_0),
        .led1_out_0(led1_out_0),
        .led2_out_0(led2_out_0),
        .led3_out_0(led3_out_0)
    );

    always #5 clk_0 = ~clk_0;

    initial begin
        reset_0 = 1'b1;
        switches_in_0 = 32'd0;
        dpad_in_0 = 4'd0;
        primeira_cor = 2'd0;
        #20 reset_0 = 1'b0;

        #500 switches_in_0 = 32'h00000010; // START=SW4, dificuldade 0
        #300 switches_in_0 = 32'd0;         // solta START

        // Aguarda a primeira cor produzida pelo jogo.
        wait (algum_led);
        if (led0_out_0 != 0) primeira_cor = 2'd0;
        else if (led1_out_0 != 0) primeira_cor = 2'd1;
        else if (led2_out_0 != 0) primeira_cor = 2'd2;
        else primeira_cor = 2'd3;
        $display("Primeiro LED do Genius = %0d em t=%0t", primeira_cor, $time);

        wait (!algum_led);
        repeat (40) @(negedge clk_0);
        dpad_in_0 = (4'b0001 << primeira_cor); // responde a primeira cor
        repeat (20) @(negedge clk_0);
        dpad_in_0 = 4'd0;
        $display("Primeira resposta do D-Pad enviada em t=%0t", $time);

        repeat (500) @(negedge clk_0);
        $finish;
    end

    initial begin // evita simular para sempre se o programa travar
        #50000;
        $fatal(1, "Timeout: confira PC, LED e perifericos no Wave");
    end
endmodule
