`timescale 1ns/1ps

module binary_to_gray( input [3:0] binary_in,
output [3:0] gray_out );

buf buf1(gray_out[3] ,binary_in[3]);
xor xor1(gray_out[2],binary_in[3],binary_in[2]),
 xor2(gray_out[1],binary_in[2],binary_in[1]),
 xor3(gray_out[0],binary_in[1],binary_in[0]);

endmodule
