`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:44 11/18/2020 
// Design Name: 
// Module Name:    stepper 
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
module stepper(clk, switches, dout);
    input clk;
    input [2:0] switches;
    output [3:0] dout;
	 reg [3:0]dout;
	 reg [1:0]currentstate=2'b00;
	 reg [1:0]nextstate=2'b00;
	 reg [2:0]prevswitchcondition=3'b00;
	 reg [15:0]clkdiv=15'd0;
	 reg [3:0]pattern=4'b011;
	 integer count=0;
	 integer N=200;
	 integer steps=0;
	 reg dir=0;
	 always@(posedge clk)
	 begin 
	 clkdiv=clkdiv+1'b1;
	 end
	 always@(posedge clkdiv[10])
	 begin
	 currentstate=nextstate;
	 end
	 always@(posedge clkdiv[10]) 
	 begin
	 case(currentstate)
	 2'b00:begin
	 if(prevswitchcondition==switches)
	 nextstate=2'b00;
	 else
	 nextstate=2'b01;
	 prevswitchcondition=switches;
	 end
	 2'b01:begin
	 count=0;
	 if(switches==3'b100)
	 begin
	 dir=1;
	 steps=N;
	 nextstate=2'b10;
	 end
	 else if(switches==3'b010)
	 begin
	 dir=1;
	 steps=N>>1;
	 nextstate=2'b10;
	 end
	 else if(switches==3'b001)
	 begin
	 dir=0;
	 steps=N;
	 nextstate=2'b10;
	 end
	 else
	 nextstate=2'b00;
	 end
	 2'b10:begin
	 case(dir)
	 
	 1'b0:pattern={pattern[0],pattern[3:1]};
	 1'b1:pattern={pattern[2:0],pattern[3]};
	 default:pattern=pattern;
	 
	 endcase
	 dout=pattern;
	 count=count+1;
	 if(count<steps)
	 nextstate=2'b10;
	 else
	 nextstate=2'b00;
	 end
	 endcase
	 end
	 endmodule
