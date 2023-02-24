`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module test_add_sub1;

	// Inputs
	reg [2:0] select;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] out;
	wire [32:0] temp_output_to_check_carry;
	wire carry;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	add_sub uut (
		.select(select), 
		.a(a), 
		.b(b), 
		.out(out), 
		.temp_output_to_check_carry(temp_output_to_check_carry), 
		.carry(carry), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		select = 3'b000;
		a = 3;
		b = 88;

		#100;
        



		select = 3'b001;
		a = 1;
		b = 1;

		#100;
		
		
		
		select = 3'b001;
		a = 82;
		b = 149;

		#100;
		


		select = 3'b000;
		a = 32'b01111111111111111111111111111111;
		b = 32'b01111111111111111111111111111111;

		#100;


	end
      
endmodule

