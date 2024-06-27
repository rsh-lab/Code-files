module DFF_res(D,Q,clk,reset);
input D,clk,reset;
output reg Q;

always@(posedge clk) begin
   if(reset == 1'b1)
        begin
            Q<= #2 1'b0;
        end
   else begin
     Q<=#2 D;   //model the propogational delay to avoid race through
   end
end
endmodule