`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Main(
				input [31:0]a,
				input [31:0]b,
				input [5:0]op,
				output [31:0]out
	 );

	// define wires
	wire [31:0]shift_rotate_unit_out;
	wire [31:0]logical_unit_out;
	wire [31:0]comparison_unit_out;
	wire [31:0]output_add_sub;
	wire carry;
	wire zero;
	
	// Instantiate the module add_sub
add_sub add_sub (
    .select(op[3]), 
    .a(a), 
    .b(b), 
    .out(output_add_sub),  
    .carry(carry), 
    .zero(zero)
    );


// Instantiate the module comparison_unit
comparison_unit comparison_unit (
    .a31(a[31]), 
    .b31(b[31]), 
    .carry(carry), 
    .zero(zero), 
    .diff(output_add_sub[31]), 
    .op(op[2:0]), 
    .comparison_unit_out(comparison_unit_out[0])
    );
	 
	 assign comparison_unit_out[31:1] = 0;



// Instantiate the module logical_unit
logica_unit logica_unit (
    .a(a), 
    .b(b), 
    .op(op[1:0]), 
    .out(logical_unit_out)
    );


// Instantiate the module shift_rotate_unit
shift_rotate_unit shift_rotate_unit (
    .a(a), 
    .b(b[4:0]), 
    .op(op[2:0]), 
    .shift_rotate_unit_out(shift_rotate_unit_out)
    );




// Instantiate the module mux4_1
mux4_1 instance_name (
    .input0(output_add_sub), 
    .input1(comparison_unit_out), 
    .input2(logical_unit_out), 
    .input3(shift_rotate_unit_out), 
    .selector(op[5:4]), 
    .out(out)
    );



endmodule


