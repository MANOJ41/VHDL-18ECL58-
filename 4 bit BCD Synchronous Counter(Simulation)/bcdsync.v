`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:36 10/14/2020 
// Design Name: 
// Module Name:    bcdsync 
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
module bcdsync(clk, rst, bcd_out);
    input clk;
    input rst;
    output [3:0]bcd_out;
	 reg [3:0]bcd_out;
	 initial
	 begin
	 bcd_out=4'd0;
	 end
	 always@(posedge clk)
	 begin
	 if(rst)
	 bcd_out=4'd0;
	 else if(bcd_out<4'd9)
	 bcd_out=bcd_out+4'd1;
	 else
	 bcd_out=4'd0;
	 end 
	 endmodule
