`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:57:35 09/30/2020
// Design Name:   jkff
// Module Name:   jkff_vv.v
// Project Name:  jkflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkff_vv_v;

	// Inputs
	reg [1:0] jk;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	jkff uut (
		.jk(jk), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		jk = 0;
		clk = 0;
		end
		always
		#20 clk=~clk;
		initial begin
		jk=0;#40;
		jk=1;#40;
		jk=2;#40;
		jk=3;#40;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

