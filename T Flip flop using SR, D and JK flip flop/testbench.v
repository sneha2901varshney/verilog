`timescale 1ns / 1ps

module testbench;
reg clk,rst,t;
wire q;
  
  t_flip_flop dut(t,clk,rst,q);
  
  initial 
  begin 
       clk=0;
       t=0;
       forever #4 clk=~clk;
  end
    
  initial 
      begin
          rst=1;
          #10;
          rst=0;
          forever
          begin   
          #10 t = 1'b1;
          #20  t = 1'b0; 
          end
      end
    initial begin
    $monitor("\t clock: %b  T: %b  Q: %b",clk,t,q);
    #100$finish;
    end
endmodule
