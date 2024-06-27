module jkflop_top;
reg j,k,clk,rst;
wire q,q2;
JKFF UUT(j,k,clk,rst,q,q2);
always@(posedge clk) begin
    $display("The status is q : %b and q' : %b  at time: %b",q,q2,$time);
end

//initialize block   
initial begin 
    forever begin
        clk=0;
        #5
        clk=1;
        #5  
        clk=0;

    end
end  
 initial begin  
    j=0;k=0;
    rst=1;
    #4
    j=1;k=1; rst=0;
    #50
    j=0; k=1; rst=0;
    #20
    j=1;k=1;rst=0;
    #26
    $finish;

end


endmodule