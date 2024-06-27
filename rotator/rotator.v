`ifndef rotator_MODULE
`define rotator_MODULE
module rotator(
    input [99:0] load,
    input [1:0]ena,
    input clk,
    output reg  q,
    output reg load_m
);

always @(posedge clk) begin 
     
    if(ena == 2'b01)
    begin
        q=load[0];
      load_m=load>>1;
        load_m[99]=q;
    end
    else if(ena==2'b10)
    begin
         q=load[99];
        load_m = load<<1;
         load_m[0]=q;
    end
end
endmodule
`endif 