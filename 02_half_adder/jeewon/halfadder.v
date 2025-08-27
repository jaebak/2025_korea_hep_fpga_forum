`timescale 1ns / 1ps

module halfadder(
	input wire A,
	input wire B,
	output wire SUM,
	output wire COUT
);

	assign SUM = A ^ B;
	assign COUT = A & B;

endmodule
