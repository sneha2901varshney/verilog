`timescale 1ns / 1ps
module mux2_1 (input a, input b, input s, 
              output y);
  always@(a or b or s )
    begin 
      assign y = (~s & a ) | (s & b );
    end 
endmodule
