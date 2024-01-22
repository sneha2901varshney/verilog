`timescale 1ns/1ps
module Decoder2to4_withenable(input e, 
                              input a, 
                              input b, 
                              output reg[3:0] y) ;

  always@(e, a, b) ;

  begin
    if(e==1) 
      begin
        if( a==0 & b==0) 
          y=4'b1000 ;
        else if (a==0 & b==1) 
          y=4'b0100;
        else if (a==1 & b==0) 
          y=4'b0010;
        else
          y=4'b0001 ;
      end
else 
  y= 4'b0000;
  end

endmodule 
