`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/26 16:44:33
// Design Name: 
// Module Name: half_adder
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

module half_adder(
    input wire A_in,
    input wire B_in,
    output reg SUM,
    output reg CARRY
);

    always @ (A_in or B_in) begin
        SUM <= A_in ^ B_in;
        CARRY <= A_in & B_in;
    end 

endmodule