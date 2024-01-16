`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/16 23:29:28
// Design Name: 
// Module Name: counter
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


module counter(
input clk,
input rst,
output [2:0] q
);
wire d1, d0,d2;

assign d1 = q[2];
assign d0 = q[1];
assign d2 = ~q[0];
D dt1(clk,rst, d1, q[1]);
D dt0(clk,rst, d0,q[0]);
D dt2(clk,rst, d2,q[2]);
endmodule
