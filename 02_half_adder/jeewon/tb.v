`timescale 1ns / 1ps

module tb;
	reg a, b;
  wire SUM, COUT;
	halfadder dut (
		.A(a),
		.B(b),
		.SUM(SUM),
		.COUT(COUT)
	);

	initial begin

		a=0; b=0; #10;
		a=0; b=1; #10;
		a=1; b=0; #10;
		a=1; b=1; #10;

		$finish;
	end

endmodule
