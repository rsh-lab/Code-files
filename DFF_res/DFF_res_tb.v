module DFFWithRes_tb();   //this is the enviroment in which we work
reg D,clk, res;
wire q;
DFF_res UUT(D,q,clk,res);
always @(q)
begin
        $display("The ouptut is %b at time %b",q, $time);
end
initial clk=0;
always begin
    #20 clk=~clk;
end
initial
    begin 
    D=0;  res =0;
    $display ("Time is %b \n ",$time);
    #20
    D= 1;  res=0;
    #40
    res=1;
    #40
    $finish;
    end
endmodule