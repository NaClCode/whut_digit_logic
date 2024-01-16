`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 22:49:01
// Design Name: 
// Module Name: BCD
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


module BCD (
    input [3:0] bcd,
    output [3:0] remainder_three
);

assign remainder_three[0] = ~bcd[0];
assign remainder_three[1] = bcd[0] & bcd[1] | ~bcd[0] & ~bcd[1];
assign remainder_three[2] = bcd[2] & ~bcd[1] & ~bcd[0] | ~bcd[2] & bcd[0] | ~bcd[3] & ~bcd[2] & bcd[1];
assign remainder_three[3] = bcd[2] & (bcd[1] | bcd[0]) | bcd[3] & ~bcd[1]; 
endmodule

