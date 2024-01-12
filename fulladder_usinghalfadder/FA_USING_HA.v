`timescale 1ns / 1ps

module FA_USING_HA(input a, 
                  input b,
                  input c,
                  output reg sum,
                   output reg carry);

  wire s1,s2,s3;
  HA_case1 d0 (a,b,s1,s2);
    HA_case2 d1 (.a(s1) , .b(c) , .sum(sum) , .c(s3));
  OR (carry,s3,s2);
endmodule
    
