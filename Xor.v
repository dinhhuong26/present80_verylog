`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 12:40:18 PM
// Design Name: 
// Module Name: Xor
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


module Xor(
    input [63:0] data_in,
    input [79:0] key_in,
    output [63:0] data_out
    );
  assign  data_out = key_in[79:16]^ data_in;
endmodule
