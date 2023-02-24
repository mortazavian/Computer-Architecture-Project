`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////

module test_comparison_unit;

	// Inputs
	reg a31;
	reg b31;
	reg carry;
	reg zero;
	reg diff;
	reg [2:0] op;

	// Outputs
	wire comparison_unit_out;

	// Instantiate the Unit Under Test (UUT)
	comparison_unit uut (
		.a31(a31), 
		.b31(b31), 
		.carry(carry), 
		.zero(zero), 
		.diff(diff), 
		.op(op), 
		.comparison_unit_out(comparison_unit_out)
	);

	initial begin
		// Initialize Inputs
		a31 = 0;
		b31 = 0;
		carry = 0;
		zero = 1;
		diff = 0;
		op = 3'b100;

		#100;
        
		// Add stimulus here
		
		
		a31 = 1;
		b31 = 1;
		carry = 0;
		zero = 0;
		diff = 0;
		op = 3'b001;

		#100;
		
		
		
		a31 = 0;
		b31 = 0;
		carry = 0;
		zero = 0;
		diff = 0;
		op = 3'b010;

		#100;
		
		
		a31 = 0;
		b31 = 0;
		carry = 0;
		zero = 0;
		diff = 1;
		op = 3'b010;

		#100;

	end
      
endmodule

