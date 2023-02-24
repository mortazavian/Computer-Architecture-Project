`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:25:16 01/21/2023
// Design Name:   logica_unit
// Module Name:   C:/Users/Mehdi/CA-project-part1/test_logica_unit1.v
// Project Name:  CA-project-part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: logica_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_logica_unit1;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [1:0] op;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	logica_unit uut (
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
		
		// testing nor
		a = 4'b1010;
		b = 4'b1100;
		op = 2'b00;

		#100;
        
		// testing and
		a = 4'b1010;
		b = 4'b1100;
		op = 2'b01;

		#100;
		
		// testing or
		a = 4'b1010;
		b = 4'b1100;
		op = 2'b10;

		#100;
		
		// testing xor
		a = 4'b1010;
		b = 4'b1100;
		op = 2'b11;

		#100;
		

	end
      
endmodule

