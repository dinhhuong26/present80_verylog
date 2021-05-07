`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 08:15:19 AM
// Design Name: 
// Module Name: present_tb
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


module present_tb(
    );
 wire [63:0] dataout;
 reg [63:0] datain = 64'h834349fd8e99a23b;
 reg clk = 1'b0;
 reg reset = 1'b0;
 reg [79:0] key = 80'h00000000000000000000;
present_cyt present(.plaintext(datain),.cyphertext(dataout),.reset(reset),.clk(clk),.key(key));
 always  #5 clk = ~clk;
endmodule
