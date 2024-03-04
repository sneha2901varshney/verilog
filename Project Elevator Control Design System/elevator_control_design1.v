`timescale 1ns\1ps

module elevator_control_design1(clk, 
reset,
 Request_floor, 
 Over_weight,
 Stop,
 Door,
 Up_move,
 Down_move,
 Weight_alert,
 Reached_floor,
 Current_floor );
 
 
input clk,reset;

input [3:0] Request_floor;
input Over_weight;
output logic[1:0] Stop;
output logic[1:0] Door;
output logic[1:0] Up_move;
output logic[1:0] Down_move;
output logic Weight_alert;
output logic[3:0] Reached_floor;
output logic [3:0] Current_floor;

always@(posedge clk)
begin

if(reset)
begin
Current_floor = 4'b0000;
Stop=1'd1;
Door=1'd1;
Up_move=1'd0;
Down_move=1'd0;
Weight_alert=1'd0;
Reached_floor=1'd0;
end

else if (reset == 0 && Over_weight == 0)
begin

    if(Request_floor < 4'b1001)
    begin

        if(Request_floor < Current_floor)
         begin
        Current_floor = Current_floor-1; 
        Stop=1'd0;
        Door=1'd0;
        Up_move=1'd0;
        Down_move=1'd1;
        Weight_alert=1'd0;
        end 

        else if (Request_floor > Current_floor)
        begin
        Current_floor =Current_floor+1 ; 
        Door=1'd1;
        Stop=1'd1;
         Up_move=1'd0;
         Down_move=1'd0;
        Weight_alert=1'd0;
        end 
    end
end

else if (reset == 0 && Over_weight == 1)
  begin
    Current_floor = Current_floor; 
    Stop=1'd1;
    Up_move=1'd0;
    Down_move=1'd0;
    Weight_alert=1'd1;
   end 

end
 assign  Reached_floor=Current_floor;
 

endmodule
