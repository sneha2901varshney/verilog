`timescale 1ns/1ps

module demux1_4 (input y,
                input s1,
                input s0,
                output I0,
                output I1,
                output I2,
                output I3);

  wire s1bar,s0bar;

  not(s1bar,s1);
  not (s0bar,s0);
  and (I0,y,s1bar,s0bar);
  and (I1,y,s1bar,s0);
  and (I2,y,s1,s0bar);
  and (I3,y,s1,s0);

endmodule
