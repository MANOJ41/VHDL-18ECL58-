`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:38 09/16/2020
// Design Name:   pencode
// Module Name:   pencode_vtf.v
// Project Name:  encoders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pencode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pencode_vtf_v;

	// Inputs
	reg en;
	reg [7:0] Din;

	// Outputs
	wire [2:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	pencode uut (
		.en(en), 
		.Din(Din), 
		.Dout(Dout)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		Din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		en=1;Din=1;#100;
		en=0;Din=2;#100;
		en=0;Din=8'b10101010;#100;
		en=0;Din=8'b00000100;#100;
		en=0;Din=8'b00001000;#100;
		en=0;Din=8'b00010000;#100;
		en=0;Din=8'b10101010;#100;
		

	end
      
endmodule

