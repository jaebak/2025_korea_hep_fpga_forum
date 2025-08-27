`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2025 03:26:59 PM
// Design Name: 
// Module Name: Top_Blink
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

module Top_Blink (
  input  wire clk,   // 125 MHz sysclk (H16)
  input  wire rst,   // 리셋 버튼(필요 없으면 빼도 됨)
  output reg  led0,  // ~1초마다 토글
  output reg  led1,  // ~2초마다 토글
  output reg  led2   // ~4초마다 토글
);

  reg [31:0] counter;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      counter <= 0;
      led0 <= 0;
      led1 <= 0;
      led2 <= 0;
    end else begin
      counter <= counter + 1;

      if (counter == 125_000_000) begin   // 약 1초
        led0 <= ~led0;
      end
      if (counter == 250_000_000) begin   // 약 2초
        led1 <= ~led1;
      end
      if (counter == 500_000_000) begin   // 약 4초
        led2 <= ~led2;
        counter <= 0; // 카운터 초기화
      end
    end
  end
    
  

endmodule
