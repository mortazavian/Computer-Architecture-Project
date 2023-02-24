`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian 9932114
//////////////////////////////////////////////////////////////////////////////////
module comparison_unit(
	input a31,
	input b31,
	input carry,
	input zero,
	input diff,
	input [2:0]op,
	output comparison_unit_out
    );
	 
											
	 assign comparison_unit_out = (zero === 1) && (op === 3'b100) ? 1: //equal
										   (zero === 0) && (op === 3'b011) ? 1: //not equal
											(carry === 1) && (op === 3'b101) ? 1: //A >= B unsign
											(carry === 0) && (op === 3'b110) ? 1: //A < B unsign
											(a31 === 1'b0)  && (b31 === 1'b1) && (op === 3'b001) ? 1: //A >= B sign
											(a31 === b31) && (diff === 0) && (op === 3'b001) ? 1:		 //A >= B sign
											0; //Any other case
	 
	 
	 
	 
	 
	 
	 
endmodule