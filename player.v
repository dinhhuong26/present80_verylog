`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2021 11:32:50 AM
// Design Name: 
// Module Name: player
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


module player(
     input  [63:0] data_in,
     output  [63:0] data_out
    );
genvar i ;
generate
    for (i=0;i<64;i=i+1) begin
    assign  data_out[(i*16)/64 + (i*16)%64] = data_in[i];
    end
endgenerate
endmodule