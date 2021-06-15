`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:51 10/21/2020 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(a, b, cin, sum, cout);
    input a;
    input b;
    input cin;
    output sum;
    output cout;
	 assign sum= a ^ b ^ cin;
    assign cout= (a & b) | (b & cin) | (cin & a);
	 endmodule
