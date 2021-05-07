`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 04:53:36 PM
// Design Name: 
// Module Name: present_cyt
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


module present_cyt(
input [63:0] plaintext,
input [79:0] key,
input clk,
input reset,
output [63:0] cyphertext
    );
reg [63:0] data_reg;
reg [79:0] key_reg;
wire [63:0] data1,data2,data3,data4;
wire [79:0] key1,key2;
reg [4:0] round;

//process data
Muxdata mux(.data_in0(plaintext),.data_in1(data4),.reset(reset),.data_out(data1));
fipflopdata dff(.data_in(data1),.data_out(data_reg),.clk(clk));
sboxlayer sb(.datain(data2),.dataout(data3));
player pl(.data_in(data3),.data_out(data4));
assign cyphertext = data2;

// process key
Muxkey mk(.key_in0(key),.key_in1(key2),.reset(reset),.key_out(key1));
dffkey dffk(.key_in(key1),.key_out(key_reg),.clk(clk));
keyupdate(.keyin(key_reg),.keyout(key2),.round(round));
//
Xor x(.data_in(data_reg),.key_in(key_reg),.data_out(data2));
//
counter count(.reset(reset),.clk(clk),.round(round));

endmodule
