`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian
//////////////////////////////////////////////////////////////////////////////////
module sipo(
	input clk,
	input serial_a,
	input shift_a,
	output reg [3:0]sipo_output
    );
	
	   reg [3:0]data;
		//initial data = sipo_output;
      always@(posedge clk) 
			begin
         if(shift_a)
				begin
            data = { serial_a , data[3:1]};
				end
			end
			
		always@ (*) begin
			sipo_output = data;
		end






endmodule
