`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian
////////////////////////////////////////////////////////////////////////////////

module test_four_bit_register;

	// Inputs
	reg clk;
	reg [3:0] B;
	reg latch_b;

	// Outputs
	wire [3:0] four_bit_register_output;

	// Instantiate the Unit Under Test (UUT)
	four_bit_register uut (
		.clk(clk), 
		.B(B), 
		.latch_b(latch_b), 
		.four_bit_register_output(four_bit_register_output)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		B = 0;
		latch_b = 0;
		
		#5;

		#50;
        
		latch_b = 0;
		B = 4'b0101;
		
		
		#50;
		
		latch_b = 1;
		B = 4'b0111;
		
		
		#50;
		
		latch_b = 0;
		B = 4'b1101;
		
		
		#50;
		
		
		
		latch_b = 0;
		B = 4'b1111;
		
		
		#50;
		
		latch_b = 0;
		B = 4'b1110;
		
		

	end
      
		
		always #50 clk = ~clk;
		
endmodule

