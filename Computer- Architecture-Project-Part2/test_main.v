`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:30:57 01/24/2023
// Design Name:   main
// Module Name:   C:/Users/Mehdi/CA-projec-part2/test_main.v
// Project Name:  CA-projec-part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_main;

	// Inputs
	reg clk;
	reg reset;
	reg start_a;
	reg A;
	reg load_b;
	reg [3:0] B;

	// Outputs
	wire c;
	wire start_c;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.reset(reset), 
		.start_a(start_a), 
		.A(A), 
		.load_b(load_b), 
		.B(B), 
		.c(c), 
		.start_c(start_c)
	);

	initial begin
		// Initialize Inputs
		
		clk = 0;
		reset = 0;
		start_a = 1;
		A = 1;
		load_b = 1;
		B = 4'b0110;

		#50;
		load_b = 0;

		#100;
		#5;
        
		  
		A = 0;
		#50;
		
		A = 0;
		#50;
		
		
		A = 1;
		#50;
		
		start_a = 0;
		
		#233
		reset = 1;
		
		

	end
	
	
	
	always #25 clk = ~clk;
      
endmodule

