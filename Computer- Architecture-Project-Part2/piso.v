`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian 9932114
//////////////////////////////////////////////////////////////////////////////////
module piso(
	input clk,
	input latch_c,
	input shift_c,
	input [3:0]four_bit_adder_output,
	output c
    );


    reg [3:0] data;
	 //initial data = 4'b0000;
    always@(posedge clk) begin
        if(latch_c)begin
            data = four_bit_adder_output;
        end
        else if(shift_c) begin
            data = { data[2:0] , 1'b0};
        end
    end
    assign c = data[3];
	 
endmodule
