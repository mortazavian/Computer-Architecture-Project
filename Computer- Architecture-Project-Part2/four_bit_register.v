`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian 9932114
//////////////////////////////////////////////////////////////////////////////////
module four_bit_register(
	input clk,
	input [3:0]B,
	input latch_b,
	output reg [3:0]four_bit_register_output = 0
    );
	
	always@(posedge clk)begin
		if(latch_b === 0)begin
			four_bit_register_output = B;
		end
		
	end


endmodule
