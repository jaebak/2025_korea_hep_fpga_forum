`timescale 1ns / 1ps

module blink_led(
	input wire clk,
	input wire rst,
	output reg [5:0] led
);


parameter integer counter_bits = 32;
reg [counter_bits-1:0] count;

always @(posedge clk) begin
	if (rst) begin
		count = 0;
		led = 0;
	end else begin
		count <= count + 1;
		led [0] <= count[counter_bits-1];
		led [1] <= count[counter_bits-2];
		led [2] <= count[counter_bits-3];
		led [3] <= count[counter_bits-4];
		led [4] <= count[counter_bits-5];
		led [5] <= count[counter_bits-6];
	end
end

blinkled_ila ila_blink(
    .clk (clk),
    .probe0 (count)
);

endmodule
