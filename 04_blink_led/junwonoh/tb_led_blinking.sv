`timescale 1ns/1ps

module tb_led_blink;

    reg        clk   = 1'b0;
    reg        rst_n = 1'b1;
    wire [3:0] led;

    led_blink #(
        .led0_counter_bits(3),
        .led1_counter_bits(4),
        .led2_counter_bits(5),
        .led3_counter_bits(6)
    ) dut (
        .clk   (clk),
        .rst_n (rst_n),
        .led   (led)
    );

    always #4 clk = ~clk;

    initial begin
        repeat (2) @(posedge clk);
        rst_n = 1'b0;
        repeat (2) @(posedge clk);
        rst_n = 1'b1;

        repeat (200) @(posedge clk);
        $finish;
    end

endmodule