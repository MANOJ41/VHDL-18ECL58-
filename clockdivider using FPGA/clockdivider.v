`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:40 12/09/2020 
// Design Name: 
// Module Name:    clockdivider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clockdivider(clock, out);
    input clock;
    output [2:0]out;
	 reg [1:0] mod_threecounter=2'b00;
	 reg[1:0]counter=2'b00;
	 reg temp=1'b0;
	 always@(posedge clock)
	 begin
	 counter=counter+2'b01;
	 if(mod_threecounter==2'b10)
	 mod_threecounter=2'b00;
	 else
	 mod_threecounter=mod_threecounter+2'b01;
	 end
	 always@(negedge clock)
	 begin
	 temp=mod_threecounter[0];
	 end
	  assign out[0]=counter[0];
	 assign out[1]=temp & mod_threecounter[0];
	 assign out[2]=counter[1];
	
endmodule
