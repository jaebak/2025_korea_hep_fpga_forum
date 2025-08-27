`timescale 1ns / 1ps
`include "./half_adder.v"
`include "./blink_led.sv"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/26 17:20:15
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input logic clk,
    input logic [3:0] btn,
    output logic [3:0] leds_4bits_tri_o,
);

    always_comb begin
        case (btn)
            4'b0001: addr_in = 4'b0000; // btn[0]
            4'b0010: addr_in = 4'b0001; // btn[1]
            4'b0100: addr_in = 4'b0010; // btn[2]
            4'b1000: addr_in = 4'b0011; // btn[3]
            default: addr_in = 4'b0000;
        endcase
    end

    blk_mem_gen_0 U3 (
    .clka(clk),
    .addra(addr_in),
    .douta(leds_4bits_tri_o)
    );
endmodule
