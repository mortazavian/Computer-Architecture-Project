`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:42:30 01/21/2023
// Design Name:   add_sub
// Module Name:   C:/Users/Mehdi/CA-project-part1/test_add_sub.v
// Project Name:  CA-project-part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_add_sub;

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
		select = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

