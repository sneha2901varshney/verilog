`timescale 1ns / 1ps

module testbench;
reg clk, reset;
wire [3:0] counter;

specific_seq_counter dut(clk, reset,counter);

    initial 
        begin
        clk = 0;
        reset = 1;
        
       # 10 reset = 0 ;
        end
        
    always #5 clk = ~clk;
    
    initial begin
    $monitor("\t\t clk: %b    counter:%b", clk, counter);
    #140 $finish;
    end
