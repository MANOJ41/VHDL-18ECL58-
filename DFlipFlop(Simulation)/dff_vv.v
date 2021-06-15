`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:30 09/23/2020
// Design Name:   dff
// Module Name:   dff_vv.v
// Project Name:  dflip
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_vv_v;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		end

		// Wait 100 ns for global reset to finish
		always
		#20 clk=~clk;
		initial begin
		d=1;#160;
		d=0;#200;
		d=1;#200;
        
		// Add stimulus here

	end
      
endmodule

