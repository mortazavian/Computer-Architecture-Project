`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mehdi Mortazavian 9932114
//////////////////////////////////////////////////////////////////////////////////
module shift_rotate_unit(
  input signed [31:0]a,
  input [4:0]b,
  input [2:0]op,
  output [31:0]shift_rotate_unit_out
   
  );
  
  //wire sign;
  //assign sign 
  
  assign shift_rotate_unit_out = op === 3'b000 ? ((a << b) | (a >> (32 - b))):
                       op === 3'b001 ? ((a >> b) | (a << (32 - b))):
                       op === 3'b010 ? a << b:
                       op === 3'b011 ? a >> b:
                       op === 3'b111 ? a >>> b:
							  a <<< b;
							  
							  // a >>> b;
  
endmodule