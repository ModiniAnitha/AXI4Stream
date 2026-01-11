`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 21:57:43
// Design Name: 
// Module Name: axi_ms
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

module top 
(
input clk,rst, newd,
input [7:0] din,
output [7:0] dout,
output last
);
wire last_t, valid_t, ready_t;
wire [7:0] data;

axis_m m1 (clk,rst,newd,din, ready_t, valid_t, data, last_t);
axis_s s1 (clk, rst,ready_t,valid_t,data,last_t, dout);

assign last = last_t;

endmodule