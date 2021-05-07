`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 11:44:57 AM
// Design Name: 
// Module Name: Muxkey
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


module Muxkey(
    input [79:0] key_in0,
    input [79:0] key_in1,
    input reset,
    output reg [79:0] key_out
    );
 always @(key_in0 or key_in1 or reset)
 if (reset== 0)
 key_out = key_in0;
 else key_out = key_in1;
endmodule

