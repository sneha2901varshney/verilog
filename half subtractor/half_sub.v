`timescale 1ns/1ps
module half_subtractor (input a,
                       input b,
                       output reg d,
                       output reg borrow);

  wire x;

  XOR(d,a,b);
  NOT(x,a);
  AND(borrow,x,b);
  
  endmodule
