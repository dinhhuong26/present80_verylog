`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 01:44:19 PM
// Design Name: 
// Module Name: dffkey
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


module dffkey(
input [79:0] key_in,
input clk,
output reg [79:0] key_out
    );
always @(posedge clk)
begin
key_out <= key_in;
end
endmodule
