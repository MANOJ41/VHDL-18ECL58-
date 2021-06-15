`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:20 09/30/2020 
// Design Name: 
// Module Name:    srff 
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
module srff(sr, clk, q, qb);
    input [1:0]sr;
    input clk;
    output q;
    output qb;
	 reg q=0,qb=1;
	 always@(posedge clk)
	 begin
	 case(sr)
	 2'b00:q=q;
	 2'b01:q=0;
	 2'b10:q=1;
	 2'b11:q=1'bZ;
	 endcase
	 qb=~q;
	 end


endmodule

