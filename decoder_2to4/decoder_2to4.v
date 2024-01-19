`timescale 1ns/1ps

module decoder_2to4 (input a,
                     input b,
                     output reg y0,
                     output regy1,
                     output reg y2,
                     output reg y3);
  
wire abar, bbar;

  not(abar,a);
  not (bbar,b);
  and(y0,abar,bbar);
  and(y1,abar,b);
  and(y2,a,bbar);
  and (y3,a,b);

endmodule
