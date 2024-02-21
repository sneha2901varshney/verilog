`timescale 1ns/1ps


module moore_fsm(input clk,
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
    beg
    case(ps)
      s0 :  ns= x ? s1 : s0;
        s1:   ns= x ? s2 : s0;
        s2:   ns= x ? s3 : s0;
        s3:    ns= x ? s4 : s0;
        s4:   ns= x ? s4 : s5;
        s5:    ns= x ? s1 : s0;
        endcase
        end

        always@(ps)
          begin
            case(ps)
        s0 :  z=0;
        s1:   z=0;
        s2:   z=0;
        s3:   z=0;
        s4:    z=0;
        s5:   z=1;

              endcase
          end 
      endmodule
