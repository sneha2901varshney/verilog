`timescale 1ns/1ps


module meelay_fsm(input clk,
                  input reset,
                  output x,
                  output reg z);

  parameter s0=3'b000;
  parameter s1=3'b001;
  parameter s2=3'b010;
  parameter s3=3'b011;
  parameter s4=3'b100;
  parameter s5=3'b101;

  reg[2:0] ps,ns;

  always@(posedge clk)
    begin
      if(reset)
        ps=s0;
      else
        ps=ns;
    end

  always@(ps or x)
    begin
    case(ps)
      s0: begin
        ns= x ? s1 : s0;
        z= 0;
      end
       s1: begin
        ns= x ? s1 : s2;
        z= 0;
      end
       s2: begin
        ns= x ? s3 : s0;
        z= 0;
      end
       s3: begin
        ns= x ? s1 : s4;
        z= 0;
      end
       s4: begin
        ns= x ? s5 : s0 ;
        z= 0;
      end
       s5: begin
        ns= x ? s1 : s4;
        z= x ? 1 : 0;
      end

    endcase
  end
endmodule
