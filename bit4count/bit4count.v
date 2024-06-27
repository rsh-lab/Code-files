`ifndef bit4count_MODULE
`define bit4count_MODULE
module bit4count (
    output reg A,B,C,D,
    input clk,
    input reset
    
);
always @(posedge clk or posedge reset)
    if(reset)  
     begin
        {A,B,C,D}<=4'b0000;
         
    end
    else if ({A & B & C & D}==4'b1111)
       begin
        {A,B,C,D}<=4'b0000;
         
    end

    else    
    begin
        {A,B,C,D}<={A,B,C,D}+4'b0001;
      
    end

endmodule
`endif