`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:20 11/18/2020
// Design Name:   ALU
// Module Name:   ALU_tb.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb_v;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg e;
	reg [2:0] opcode;

	// Outputs
	wire [31:0] y;
	wire ack;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.e(e), 
		.opcode(opcode), 
		.y(y), 
		.ack(ack)
	);

	initial begin
		// Initialize Inputs
	

		// Wait 100 ns for global reset to finish
	   e=1;
		a=8;
		b=6;
		opcode=3'b000; #50;
		opcode=3'b001; #50;
		opcode=3'b010; #50;
		opcode=3'b011; #50;
		opcode=3'b100; #50;
		opcode=3'b101; #50;
		opcode=3'b110; #50;
		opcode=3'b111; #50;
		e=0;
        

        
		// Add stimulus here

	end
      
endmodule

