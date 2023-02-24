`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:20 01/23/2023 
// Design Name: 
// Module Name:    main 
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
module main(
	input clk,
	input reset,
	input start_a,
	input A,
	input load_b,
	input [3:0]B,
	output c,
	output start_c
    );


	wire [3:0]sipo_output;
	wire shift_a;
	wire latch_b;
	wire latch_c;
	wire shift_c;
	wire [3:0]four_bit_register_output;
	wire [3:0]piso_input;


// Instantiate the module
fsm fsm (
    .clk(clk), 
    .start_a(start_a), 
    .load_b(load_b), 
    .reset(reset), 
    .shift_a(shift_a), 
    .latch_b(latch_b), 
    .latch_c(latch_c), 
    .shift_c(shift_c), 
    .start_c(start_c)
    );



// Instantiate the module serial input parallel output
sipo sipo (
    .clk(clk), 
    .serial_a(A), 
    .shift_a(shift_a), 
    .sipo_output(sipo_output)
    );



// Instantiate the module 4bit_register
four_bit_register four_bit_register (
    .clk(clk), 
    .B(B), 
    .latch_b(latch_b), 
    .four_bit_register_output(four_bit_register_output)
    );



// Instantiate the module 4bit_adder
four_bit_adder four_bit_adder (
    .sipo_input(sipo_output), 
    .register_input(four_bit_register_output), 
    .piso_output(piso_input)
    );



// Instantiate the module paralle input serrial output
piso piso (
    .clk(clk), 
    .latch_c(latch_c), 
    .shift_c(shift_c), 
    .four_bit_adder_output(piso_input), 
    .c(c)
    );











endmodule
