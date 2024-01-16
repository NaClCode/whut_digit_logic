`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/16 22:40:36
// Design Name: 
// Module Name: D
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

module D(
    input clk,
    input rst,
    input d,
    output reg q
);
    always @(posedge clk,negedge rst)begin
    if(rst==1'b1)
    q<=1'b0;
    else
    q<=d;
    end
endmodule
