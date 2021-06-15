`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:15 10/21/2020
// Design Name:   fulladder
// Module Name:   fulladder_ttf.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_ttf_v;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		a=0;b=0;cin=0;#50
		a=0;b=1;cin=0;#50
		a=1;b=0;cin=0;#50
		a=1;b=1;cin=0;#50
		a=0;b=0;cin=1;#50
		a=0;b=1;cin=1;#50
		a=1;b=0;cin=1;#50
		a=1;b=1;cin=1;#50;
      end
      endmodule
