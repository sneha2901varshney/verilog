`timescale 1ns/1ps
module comparator(input a,
                 input b,
                 output g,
                 output s,
                  output e);

  always@ (a,b)
    begin
      if(a==0 & b==0)
        e=1;
      else if(a==0 & b==1 )
      s=1;
      else if (a ==1 & b==0)
        g=1;
      else
      e=1;
    end
endmodule
      
    
