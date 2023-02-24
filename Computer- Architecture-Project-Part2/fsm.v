`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:21:20 01/24/2023 
// Design Name: 
// Module Name:    fsm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fsm(
	input clk,
	input start_a,
	input load_b,
	input reset,
	output reg shift_a,
	output reg latch_b,
	output reg latch_c,
	output reg shift_c,
	output reg start_c
    );
	 
	 // set number to diffrent states
	 localparam [1:0]wait_b = 0;
	 localparam [1:0]wait_a = 1;
	 localparam [1:0]take_a = 2;
	 localparam [1:0]send_c = 3;
	 
	 // reg to set state
	 reg [1:0]state;
	 reg [1:0]count;
	 
	
	 // Initial the starting values
	 initial begin
	 shift_a = 0;
	 latch_b = 0;
	 latch_c = 0;
	 shift_c = 0;
	 start_c = 0;
	 state = wait_b;
	 count = 0;
	 end
	 
	 
	 
	 always@(posedge clk) begin
		
		shift_a = 0;
		latch_b = 0;
		latch_c = 0;
		shift_c = 0;
		start_c = 0;
		
		
		if (state === wait_b) begin
			if(load_b) begin
				state = wait_a;
				latch_b = 1;
			end
		end
		else if (state === wait_a) begin
			if(start_a) begin
				state = take_a;
				count = 0;
				shift_a = 1;
			end
		end
		else if (state === take_a)begin
			shift_a = 1;
			if (count === 3)begin
				state = send_c;
				shift_a = 0;
				count = 0;
				latch_c = 1;
			end
			else begin
				count = count + 1;
			end
		end
		else if (state === send_c) begin
			if (count === 0) begin 
				start_c = 1;
				shift_c = 1;
				count = count + 1;
			end
			else if(count === 2) begin 
				state = wait_b;
				shift_c = 1;
			end 
			else begin
				shift_c = 1;
				count = count + 1;
			end
		end
	 
	 end
	 
	 always@ (reset) begin
		state = wait_b;
		count = 0;
	 end
	 

endmodule
