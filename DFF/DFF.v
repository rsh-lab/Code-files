`ifndef DFF_MODULE
`define DFF_MODULE
module DFF(clk,D, Q, reset);
input clk;
input D;
output reg Q;
input reset;

always @(posedge clk or posedge reset )
    if(posedge reset)
      Q <=0;
    else
      Q<=D;        

endmodule
`endif // DFF_MODULE