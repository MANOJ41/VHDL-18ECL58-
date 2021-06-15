`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:50 10/14/2020
// Design Name:   bcdsync
// Module Name:   bcdsync_vtt.v
// Project Name:  bcdsync
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdsync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcdsync_vtt_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] bcd_out;

	// Instantiate the Unit Under Test (UUT)
	bcdsync uut (
		.clk(clk), 
		.rst(rst), 
		.bcd_out(bcd_out)
	);
		initial
		begin
		clk=0;
		rst=0;
	end
	always #20 clk = ~clk;

     initial begin
	  rst = 0; #400;
	  rst = 1; #100;
	  rst = 0; #400;
	  rst = 1; #50;
	  rst=0;#100;
	end
	initial begin
	      $monitor(":::::::: | Q = %d | CLK = %d ",bcd_out,clk,$time);
        
		

	end
      
endmodule

