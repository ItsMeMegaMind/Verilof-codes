`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2020 04:55:29 PM
// Design Name: 
// Module Name: Top
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

module light (input CLK, input PIN_17, output PIN_23);
  reg oldstate=0;
  reg PIN_23=0;

  always @ ( posedge CLK ) begin
      if (PIN_17==1 &~oldstate)
        begin
        oldstate <=1;
        PIN_23 <=~PIN_23;
        end
      else if (~PIN_17)
        oldstate<=0;
  end
endmodule

