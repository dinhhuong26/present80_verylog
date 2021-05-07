`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 11:32:48 AM
// Design Name: 
// Module Name: fliplopkey
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
    input [79:0] key_in1,
    input [0:0] key_in2,
    input reset,
    output reg [79:0] key_out
    );
 always @(key_in1 or key_in2 or reset)
 if (reset== 0)
 key_out = key_in1;
 else key_out = key_in2;
endmodule
