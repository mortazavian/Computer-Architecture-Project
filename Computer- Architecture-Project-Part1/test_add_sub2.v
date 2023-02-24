`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:17 01/22/2023
// Design Name:   add_sub
// Module Name:   C:/Users/Mehdi/CA-project-part1/test_add_sub2.v
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

module test_add_sub2;

	// Inputs
	reg select;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] out;
	wire carry;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	add_sub uut (
		.select(select), 
		.a(a), 
		.b(b), 
		.out(out), 
		.carry(carry), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		a = 32'b11111111111111111111111111111111;
		b = 32'b11111111111111111111111111111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

