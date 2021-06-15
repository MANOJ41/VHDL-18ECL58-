`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:50 09/16/2020
// Design Name:   mux
// Module Name:   mux_vtf.v
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

module mux_vtf_v;

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
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

