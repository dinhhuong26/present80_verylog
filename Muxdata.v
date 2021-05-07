`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 11:45:44 AM
// Design Name: 
// Module Name: Muxdata
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


module Muxdata(
    input [63:0] data_in0,
    input [63:0] data_in1,
    input reset,
    output reg [63:0] data_out
    );
 always @(data_in0 or data_in1 or reset)
 if (reset== 0)
 data_out = data_in0;
 else data_out = data_in1;
endmodule
