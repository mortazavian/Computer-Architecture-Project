`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:55:15 01/21/2023
// Design Name:   mux4_1
// Module Name:   C:/Users/Mehdi/CA-project-part1/test_mux4_1.v
// Project Name:  CA-project-part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux4_1;

	// Inputs
	reg [31:0]input0;
	reg [31:0]input1;
	reg [31:0]input2;
	reg [31:0]input3;
	reg [1:0] selector;

	// Outputs
	wire [31:0]out;

	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
		.input0(input0), 
		.input1(input1), 
		.input2(input2), 
		.input3(input3), 
		.selector(selector), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		input0 = 0;
		input1 = 0;
		input2 = 0;
		input3 = 0;
		selector = 0;

		#100;
        
		// Add stimulus here
		
		
		input0 = 1;
		input1 = 2;
		input2 = 3;
		input3 = 4;
		selector = 0;

		#100;
		
		
		input0 = 1;
		input1 = 2;
		input2 = 3;
		input3 = 4;
		selector = 1;

		#100;
		
		
		input0 = 1;
		input1 = 2;
		input2 = 3;
		input3 = 4;
		selector = 2;

		#100;
		
		input0 = 1;
		input1 = 2;
		input2 = 3;
		input3 = 4;
		selector = 3;

		#100;
		
		
		

	end
      
endmodule

