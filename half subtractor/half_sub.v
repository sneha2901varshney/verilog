`timescale 1ns/1ps
module half_subtractor (input a,
                       input b,
                       output reg d,
                       output reg borrow);

  assign d = a^b;
  assign borrow = (~a)&b;
  
  endmodule
