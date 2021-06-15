`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:51 12/02/2020 
// Design Name: 
// Module Name:    dcmotor 
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
module dcmotor(clk, rst, dir, row, en, mtr1, mtr2);
    input clk;
    input rst;
    input dir;
    input [3:0]row;
    output en;
    output reg mtr1,mtr2;
	reg [25:0]div; 
	wire clkd, tick;
	reg [7:0] counter; 
	reg [7:0]dutycycle;
   always @(posedge clk) 
	begin div=div+1;
	end assign clkd=div[8]; 
	assign tick=row[0] & row[1] & row [2] & row[3]; 
	assign en=1 'b1; 
	always @(posedge clkd) 
	begin counter=counter+1; 
	end
	always @(negedge tick)
	begin 
	case (row)
	4 'b1110: dutycycle<=250;
	4 'b1101: dutycycle<=190;
	4'b1011: dutycycle<=100; 
	4'b0111: dutycycle<=00; 
	endcase 
	end
	always @(rst, dir) 
	begin 
	if(rst==0)
	begin 
	mtr1<=0; 
	mtr2<=0; 
	end
   else 
	if (dir==1)
	begin 
	mtr2<=0; 
	if (counter<-dutycycle) 
	mtr1<=1; 
	else 
	mtr1<=0; 
	end 
	else
	begin 
	mtr1<=0; 
	if (counter<=dutycycle) 
	mtr2<=1;
	else 
	mtr2<=0;
	end
	end
endmodule