`timescale 1ns/1ps

module tb_half_adder;

    reg a, b;
    wire sum, cout;

    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

endmodule