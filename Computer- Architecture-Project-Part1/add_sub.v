`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
module add_sub(
	input select,
	input [31:0]a,
	input [31:0]b,
	output [31:0]out,
	output carry,
	output zero
	
	);

	wire [32:0]temp_output_to_check_carry;

	assign temp_output_to_check_carry = select === 1'b0 ? a + b:  a + ((b ^ 32'b11111111111111111111111111111111) + 1'b1);
	
	assign zero = out === 0 ? 1: 0;
	
	assign carry = temp_output_to_check_carry[32] === 1 ? 1: 0;

	assign out = temp_output_to_check_carry[31:0];

endmodule
