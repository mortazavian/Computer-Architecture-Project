`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// 
////////////////////////////////////////////////////////////////////////////////

module test_sipo;

	// Inputs
	reg clk;
	reg serial_a;
	reg shift_a;

	// Outputs
	wire [3:0] sipo_output;

	// Instantiate the Unit Under Test (UUT)
	sipo uut (
		.clk(clk), 
		.serial_a(serial_a), 
		.shift_a(shift_a), 
		.sipo_output(sipo_output)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		serial_a = 0;
		shift_a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        

		serial_a = 1;
		shift_a = 1;
	
		#100;
	
		serial_a = 1;
		shift_a = 1;
		
		#100;
	
		serial_a = 1;
		shift_a = 1;
		
		
		#100;
	
		serial_a = 1;
		shift_a = 1;
		
		#100;
	
		

	end
   

	always #50 clk = ~clk;

   
	
endmodule

