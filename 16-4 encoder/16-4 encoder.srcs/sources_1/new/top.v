`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2020 08:27:29 PM
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
    input [15:0] b_in,
    output [3:0] b_out
    );
    reg [3:0] b_out;
    
    always@(b_in)
    begin
    b_out=0;
    case(b_in)
    16'h0001:b_out=0;
    16'h0002:b_out=1;
    16'h0004:b_out=2;
    16'h0008:b_out=3;
    16'h0010:b_out=4;
    16'h0020:b_out=5;
    16'h0040:b_out=6;
    16'h0080:b_out=7;
    16'h0100:b_out=8;
    16'h0200:b_out=9;
    16'h0400:b_out=10;
    16'h0800:b_out=11;
    16'h1000:b_out=12;
    16'h2000:b_out=13;
    16'h4000:b_out=14;
    16'h8000:b_out=15;
    endcase
    end
endmodule
