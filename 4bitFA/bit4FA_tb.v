module bit4FA_env();
reg [3:0]A;
reg [3:0]B;
wire [3:0]sum;
wire c;

bit4FA UUT(A,B,sum,c);
always @(sum or c) begin
    $display("The sum of %b and %b  is %b and carrry is %b",A,B,sum,c);
end

initial begin
    A=4'b0000; B= 4'b0000; 
    #20
    A = 4'b0001 ;  B=4'b0001;
    #20
    A= 4'b0011; B= 4'b0001; 
    #20
    A = 4'b1111; B= 4'b1111;
    #20
    $finish;
end
endmodule

