`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2020 04:21:47 PM
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
    output [10:0] out
    );
    reg [10:0] out=0;
    reg [24:0] clock=0;
    reg tmp=0;

    always@(posedge clk)
    begin
        clock<=clock+1;
        if (tmp!=clock[15])
        begin
            out<=out+clock[15];
            tmp=clock[15];
            end
        end
       
endmodule
