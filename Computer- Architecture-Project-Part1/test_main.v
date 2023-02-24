`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:23:18 01/22/2023
// Design Name:   Main
// Module Name:   C:/Users/Mehdi/CA-project-part1/test_main.v
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

module test_main;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [5:0] op;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		op = 0;

		#100;
        
		// Add stimulus here
		
		
		a = 234;
		b = 11;
		op = 6'b000000;

		#100;
		
		op = 6'b001000;

		#100;
		
		
		a = -234;
		b = -111;
		op = 6'b011001;

		#100;
		
		a = 8'b11001101;
		b = 4;
		op = 6'b110001;

		#100;
		
		a = -52;
		b = 4;
		op = 6'b110111;

		#100;
		
		
		

	end
      
endmodule

