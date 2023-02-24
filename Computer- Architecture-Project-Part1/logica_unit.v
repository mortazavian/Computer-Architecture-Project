`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian
//////////////////////////////////////////////////////////////////////////////////
module logica_unit(
	input [31:0]a,
	input [31:0]b,
	input [1:0]op,
	output [31:0]out
    );
	
	assign out = op === 2'b00 ? ~(a | b): //nor
					 op === 2'b01 ? a & b:	  //and
					 op === 2'b10 ? a | b:    //or
					 a ^ b;						  //xor
	
	



endmodule
