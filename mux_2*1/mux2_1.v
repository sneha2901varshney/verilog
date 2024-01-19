`timescale 1ns / 1ps
module mux2_1 (input a, input b, input s, 
              output y);
  wire sbar,p,q;
  not(sbar,s);   
  and(p,a,sbar);
  and(q,b,s);       
  or(y,p,q);
endmodule
