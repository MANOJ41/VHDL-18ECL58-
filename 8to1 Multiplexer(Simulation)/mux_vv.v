`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:31 09/23/2020
// Design Name:   mux
// Module Name:   mux_vv.v
// Project Name:  multiplex
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_vv_v;

	// Inputs
	reg [2:0] s;
	reg [7:0] i;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.s(s), 
		.i(i), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		s=0;i=8'B00000001;#50;//1
		s=1;i=8'B00000101;#50;//5
		s=2;i=8'B00100001;#50;//33
		s=3;i=8'B00001001;#50;//9
		s=4;i=8'B10000001;#50;//129
		s=5;i=8'B01100001;#50;//97
		s=6;i=8'B11000001;#50;//193
		s=7;i=8'B00000111;#50;//7
	end
      
endmodule


