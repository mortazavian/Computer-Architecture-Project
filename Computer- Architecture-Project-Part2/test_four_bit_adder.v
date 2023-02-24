`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:09:40 01/23/2023
// Design Name:   four_bit_adder
// Module Name:   C:/Users/Mehdi/CA-projec-part2/test_four_bit_adder.v
// Project Name:  CA-projec-part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_four_bit_adder;

	// Inputs
	reg [3:0] sipo_input;
	reg [3:0] register_input;

	// Outputs
	wire [3:0] piso_output;

	// Instantiate the Unit Under Test (UUT)
	four_bit_adder uut (
		.sipo_input(sipo_input), 
		.register_input(register_input), 
		.piso_output(piso_output)
	);

	initial begin
		// Initialize Inputs
		sipo_input = 0;
		register_input = 0;

		#100;
        
		// Add stimulus here

		sipo_input = 3'b010;
		register_input = 3'b011;

		#100;


		sipo_input = 3'b110;
		register_input = 3'b001;

		#100;


	end
      
endmodule

