`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:43 09/16/2020 
// Design Name: 
// Module Name:    pencode 
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
module pencode(en, Din, Dout);
    input en;
    input [7:0]Din;
    output [2:0]Dout;
	 reg [2:0]Dout;
	 always@(en,Din)
	 begin
	 if(en==1)
	 begin
	 Dout=3'bZZZ;
    end
else
begin
casex(Din)
8'b00000001:Dout=3'b000;
8'b0000001X:Dout=3'b001;
8'b000001XX:Dout=3'b010;
8'b00001XXX:Dout=3'b011;
8'b0001XXXX:Dout=3'b100;
8'b001XXXXX:Dout=3'b101;
8'b01XXXXXX:Dout=3'b110;
8'b1XXXXXXX:Dout=3'b111;
endcase
end
end










endmodule
