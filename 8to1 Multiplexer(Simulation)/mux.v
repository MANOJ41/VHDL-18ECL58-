`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:53 09/16/2020 
// Design Name: 
// Module Name:    mux 
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
module mux(s, i, y);
    input [2:0]s;
    input [7:0]i;
    output y;
	 reg y;
	 always@(s,i)
	 begin
	 case(s)
	 3'b000:y=i[0];
	 3'b001:y=i[1];
	 3'b010:y=i[2];
	 3'b011:y=i[3];
	 3'b100:y=i[4];
    3'b101:y=i[5];
    3'b110:y=i[6];	
    3'b111:y=i[7];	
    endcase
end	 
endmodule

