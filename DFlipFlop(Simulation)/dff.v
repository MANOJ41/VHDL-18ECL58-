`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:01 09/23/2020 
// Design Name: 
// Module Name:    dff 
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
module dff(d, clk, q, qb);
    input d;
    input clk;
    output q;
    output qb;
	 reg q=0,qb=1;
	 always@(posedge clk)
	 begin
	 q=d;

	 qb=~q;

end
endmodule
