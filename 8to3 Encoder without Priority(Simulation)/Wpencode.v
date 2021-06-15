`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:35 09/16/2020 
// Design Name: 
// Module Name:    Wpencode 
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
module Wpencode(en, Din, Dout);
    input en;
    input [7:0]Din;
    output [7:0]Dout;
	 reg [2:0]Dout;
	 always@(en,Din)
	 begin
	 if(en==1)
	 begin
	 Dout=3'bZZZ;
	 end
	 else
	 begin
	 case(Din)
	 8'b00000001:Dout = 3'b000;
    8'b00000010:Dout = 3'b001;
    8'b00000100:Dout = 3'b010;
    8'b00001000:Dout = 3'b011;
    8'b00010000:Dout = 3'b100;
    8'b00100000:Dout = 3'b101;
    8'b01000000:Dout = 3'b110;
    8'b01000000:Dout = 3'b111;
    endcase
    end
    end
    endmodule
	 