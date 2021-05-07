`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 09:27:27 AM
// Design Name: 
// Module Name: keyupdate
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


module keyupdate(
input [4:0] round,
input [79:0] keyin,
output [79:0] keyout
    );
wire [79:0] tempkey;
assign tempkey = {keyin[18:0],keyin[79:19]};
sbox sboxkey (.datain(tempkey[79:76]),.dataout(keyout[79:76]));
assign keyout[14:0] = tempkey[14:0];
assign keyout[75:20]= tempkey[75:20];
assign keyout[19:15] = tempkey[19:15] ^ round;
endmodule
