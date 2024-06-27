module JKFF(J,K, clk,reset, Q,Q2);
input J;
input K;
input clk;
input reset;
output reg Q;
output reg Q2;

always @(posedge clk) begin
    if(J &&  K)
        Q <= #2 !Q;
    else if(!J && !K)
        Q<=#2 Q;
    else if(!J && K)
        Q<=#2 0;
    else if(J && !K)
        Q<=1;
    
end 
always @(posedge reset) begin
    Q<=0;     //help in initlaisation if we put reset 1 in testbench initially
end
always @(Q)
begin
         Q2 <= #2 !Q;
end
endmodule