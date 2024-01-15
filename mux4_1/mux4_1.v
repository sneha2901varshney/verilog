`timescale 1ns / 1ps
module mux4_1 (input d0, 
              input d1,
              input d2,
              input d3,
              input s0,
              input s1,
              output y);

  wire p,q,r,s ,s1bar, s0bar ;

  NOT(s1bar , s1);
  NOT(s0bar, s0);
  AND(p,s1bar,s0bar,d0);
  AND(q,s1bar,s0,d1);
  AND(r,s1,s0bar,d2);
  AND(s,s1,s0,d3);
  OR (y,p,q,r,s);

endmodule
