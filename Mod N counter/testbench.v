`timescale 1ns / 1ps

module testbench;
parameter N = 6;
parameter LENGTH = 3;
        
reg clk,reset;
wire [LENGTH-1:0] counter;

mod_n_counter dut(clk, reset, counter);

initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            reset = 1;
            #10;
            reset = 0;    
        end

initial begin
    $monitor("\t\t\t counter: %d",counter);
    #125 $finish;
end

endmodule
