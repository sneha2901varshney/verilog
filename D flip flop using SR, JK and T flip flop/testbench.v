`timescale 1ns / 1ps

module test_bench;
reg clk,rst,d;
wire Q;

  d_flip_flop dut(clk,rst,d,Q);
  
  initial begin 
  clk=0;
  d=0;
  forever #4 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;  
     rst=0;
    forever #10 d= ~d;
    end 
    
    initial begin
    $monitor("\t clk: %d  D: %d  Q: %d", clk, d, Q);
    #80 $finish;
    end
endmodule
