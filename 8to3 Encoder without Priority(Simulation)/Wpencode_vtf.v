`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:08 09/16/2020
// Design Name:   Wpencode
// Module Name:   Wpencode_vtf.v
// Project Name:  encode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Wpencode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Wpencode_vtf_v;

	// Inputs
	reg en;
	reg [7:0] Din;

	// Outputs
	wire [2:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	Wpencode uut (
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
	 Din=8'b00000001;en=1;#200; 
    Din=8'b00000010;en=0;#100;
    Din=8'b00000100;en=0;#100;
    Din=8'b00001000;en=0;#100;
    Din=8'b00010000;en=0;#100;
    Din=8'b00100000;en=0;#100;
    Din=8'b01000000;en=0;#100;
    Din=8'b10000000;en=0;#100;

	end
      
endmodule

