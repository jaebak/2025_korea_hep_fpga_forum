`timescale 1ns / 1ps
`include "./half_adder.v"
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
    input wire [1:0] sws_2bits_tri_i,
    output wire [3:0] leds_4bits_tri_o
);
    half_adder U1 (
    .A_in(sws_2bits_tri_i[0]),
    .B_in(sws_2bits_tri_i[1]),
    .SUM(leds_4bits_tri_o[0]),
    .CARRY(leds_4bits_tri_o[1])
    );
endmodule
