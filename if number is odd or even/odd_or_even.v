`timescale 1ns/1ps

module even_or_odd( input[3:0] number,
                    output reg even_odd);
                    
parameter Even = 1'b1 ;
parameter Odd = 1'b0;

always@(number)
begin
even_odd =  check_even_odd(number);
 if (even_odd == 1'b1) $display("\t\t %d is an even number", number);
 else $display("\t\t %d is an odd number", number);
 end
 
 function check_even_odd;
 input [3:0] num;
 begin 
 if (num%2 == 0) check_even_odd = Even;
 else check_even_odd = Odd ;
 end
 endfunction 
 
endmodule
