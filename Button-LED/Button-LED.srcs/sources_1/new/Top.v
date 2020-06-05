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
  reg oldstate=1;
  reg PIN_23 = 1;
  wire PIN_17;
  always @ ( posedge CLK ) begin
      if (oldstate==1)
        begin
        oldstate <=0;
        PIN_23 <=~PIN_23;
        end
      else
        oldstate<=~oldstate;
  end
endmodule
