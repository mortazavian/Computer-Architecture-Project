`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian
////////////////////////////////////////////////////////////////////////////////

module test_shift_rotate_unit;

	// Inputs
	reg [31:0] a;
	reg [4:0] b;
	reg [2:0] op;

	// Outputs
	wire [31:0] shift_rotate_unit_out;

	// Instantiate the Unit Under Test (UUT)
	shift_rotate_unit uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.shift_rotate_unit_out(shift_rotate_unit_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		op = 0;

		#100;
        
		// Add stimulus here
		
		a = 32'b11111001110010011100100111001001;
		b = 3;
		op = 3'b000;

		#100;
		
		
		a = 32'b11111001110010011100100111001001;
		b = 4;
		op = 3'b001;

		#100;
		
		a = 32'b11111001110010011100100111001001;
		b = 20;
		op = 3'b010;

		#100;
		
		a = 32'b11111001110010011100100111001001;
		b = 20;
		op = 3'b011;

		#100;
		
		
		a = 32'b1111_1001_1000_0000_0000_0000_0000_0000;
		b = 20;
		op = 3'b111;

		#100;
		
		
		a = 32'b1111_0000_0000_0000_0000_0000_0000_0000;
		b = 4;
		op = 3'b001;

		#100;
		
		a = 32'b1111_0000_0000_0000_0000_0000_0000_0000;
		b = -4;
		op = 3'b000;

		#100;
		
		
		a = 20;
		b = 3;
		op = 3'b000;
		
		#100;
		
		

	end
      
endmodule

