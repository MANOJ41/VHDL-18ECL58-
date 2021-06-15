`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:31 09/30/2020
// Design Name:   srff
// Module Name:   srff_vv.v
// Project Name:  srflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srff_vv_v;

	// Inputs
	reg [1:0] sr;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	srff uut (
		.sr(sr), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		sr = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		end
		always
		#20 clk=~clk;
		initial begin
		sr=0;#40;
		sr=1;#40;
		sr=2;#40;
		sr=3;#40;

        
		// Add stimulus here

	end
      
endmodule

