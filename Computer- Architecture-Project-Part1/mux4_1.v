`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module mux4_1(
	input [31:0]input0,
	input [31:0]input1,
	input [31:0]input2,
	input [31:0]input3,
	input [1:0]selector,
	output [31:0]out
    );
	
	assign out  = selector === 2'b00 ? input0:
						selector === 2'b01 ? input1:
						selector === 2'b10 ? input2:
						input3;
	
	
	
	
endmodule
