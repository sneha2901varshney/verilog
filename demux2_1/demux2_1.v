`timescale 1ns / 1ps
module demux4_1 ( input a, 
                 input s,
                 output I0,
                 output I1);


  always@(a or s)
    begin
      assign I0 = s & a;
      assign I1 = ~s & a;
    end 
endmodule
