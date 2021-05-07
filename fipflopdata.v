`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 04:01:04 PM
// Design Name: 
// Module Name: fipflopdata
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


module fipflopdata(
input [63:0] data_in,
input clk,
output reg [63:0] data_out
    );
always @(posedge clk)
begin
data_out <= data_in;
end
endmodule
