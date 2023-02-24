`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:37 01/23/2023
// Design Name:   piso
// Module Name:   C:/Users/Mehdi/CA-projec-part2/test_piso.v
// Project Name:  CA-projec-part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: piso
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_piso;

	// Inputs
	reg clk;
	reg latch_c;
	reg shift_c;
	reg [3:0] four_bit_adder_output;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	piso uut (
		.clk(clk), 
		.latch_c(latch_c), 
		.shift_c(shift_c), 
		.four_bit_adder_output(four_bit_adder_output), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		latch_c = 0;
		shift_c = 0;
		four_bit_adder_output = 0;

		#100;
		#5;
		
		
		latch_c = 0;
		shift_c = 1;
		four_bit_adder_output = 4'b1011;

		#100;
		
		
		
		latch_c = 1;
		shift_c = 1;
		#100;
		
		latch_c = 1;
		shift_c = 1;
		#100;
		
		latch_c = 1;
		shift_c = 1;
		#100;
		
	
	end
      
		always #50 clk = ~clk;
		
		
		
endmodule

