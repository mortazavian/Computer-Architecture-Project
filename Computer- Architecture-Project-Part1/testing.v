`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:51:27 01/21/2023
// Design Name:   Main
// Module Name:   C:/Users/Mehdi/CA-project-part1/testing.v
// Project Name:  CA-project-part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testing;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

