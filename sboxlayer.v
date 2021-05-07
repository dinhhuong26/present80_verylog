`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 10:22:37 PM
// Design Name: 
// Module Name: sboxlayer
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


module sboxlayer(
input [63:0] datain,
output [63:0] dataout
    );
genvar i;
generate
for (i=0;i<64;i=i+4) begin:
sbox layer (.datain(datain[i+3:i]),.dataout(dataout[i+3:i]));
end
endgenerate
endmodule
