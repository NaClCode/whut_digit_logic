`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/18 19:40:47
// Design Name: 
// Module Name: lr_reg
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

module lr_reg(
    input clk,
    input rst,
    input d,
    input mode,
    output [3:0] q
    );
    wire d0, d1,d2,d3;
    assign d0 = (d & ^mode) | (~mode & q[1]);
    assign d1 = (q[0] & mode) | (~mode & q[2]);
    assign d2= (q[1] & mode) | (~mode & q[3]);
    assign d3 = (q[2] &  mode)| (~mode & d);
    D dt_0(clk,rst,d0,q[0]);
    D dt_1(clk,rst,d1,q[1]);
    D dt_2(clk,rst,d2,q[2]);
    D dt_3(clk,rst,d3,q[3]);
endmodule
