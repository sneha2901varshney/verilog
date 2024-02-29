`timescale 1ns / 1ps

module testbench;
reg clk, reset;
wire clk_by4;

freq_div_by4 dut(clk, reset, clk_by4);

initial begin
clk= 1'b0;
forever #10 clk= ~clk;
end
initial begin
reset= 1'b1;
#20
reset= 1'b0;
#220 $finish;
end
endmodule
