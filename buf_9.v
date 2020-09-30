`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:36:51 07/16/2019 
// Design Name: 
// Module Name:    buf_9 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module buf_9(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img
    );

reg [31:0] n0 [0:7];
reg [31:0] n1 [0:7];

always @(posedge clk) begin
n0[0]<=a_re;
n0[1]<=n0[0];
n0[2]<=n0[1];
n0[3]<=n0[2];
n0[4]<=n0[3];
n0[5]<=n0[4];
n0[6]<=n0[5];
n0[7]<=n0[6];
a1_re<=n0[7];
n1[0]<=a_img;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
n1[4]<=n1[3];
n1[5]<=n1[4];
n1[6]<=n1[5];
n1[7]<=n1[6];
a1_img<=n1[7];

end
endmodule
