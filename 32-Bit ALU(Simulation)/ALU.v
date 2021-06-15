`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:56 11/18/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(a, b, e, opcode, y, ack);
    input [31:0]a;
    input[31:0] b;
    input [2:0]opcode;
    input e;
    output [31:0]y;
    output ack;
	 reg [31:0]y;
	 reg ack;
	 always@(a,e,b,opcode)
	 begin
	 if(e==0)
	 y=64'bZ;
	 else
	 begin
	 case(opcode)
	 3'd0:y[31:0]=a+b;
	 3'd1:y[31:0]=a-b;
	 3'd2:y[31:0]=~a;
	 3'd3:y=a+1;
	 3'd4:y[31:0]=a-1;
	 3'd5:y[31:0]=a;
	 3'd6:y[31:0]=a|b;
	 3'd7:y[31:0]=a&b;
	 default:$display("invalid opcode");
	 endcase
	 ack=1'b1;
	 end
	 end 
	 


endmodule

