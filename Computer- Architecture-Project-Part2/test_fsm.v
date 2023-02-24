`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:59:59 01/24/2023
// Design Name:   fsm
// Module Name:   C:/Users/Mehdi/CA-projec-part2/test_fsm.v
// Project Name:  CA-projec-part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fsm;

	// Inputs
	reg clk;
	reg start_a;
	reg load_b;
	reg reset;

	// Outputs
	wire shift_a;
	wire latch_b;
	wire latch_c;
	wire shift_c;
	wire start_c;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.start_a(start_a), 
		.load_b(load_b), 
		.reset(reset), 
		.shift_a(shift_a), 
		.latch_b(latch_b), 
		.latch_c(latch_c), 
		.shift_c(shift_c), 
		.start_c(start_c)
	);

	initial begin
		#5;
		// Initialize Inputs
		clk = 0;
		start_a = 1;
		load_b = 1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
	
	always #50 clk = ~clk;
      
endmodule

