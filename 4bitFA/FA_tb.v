module FA_env();
reg a;
reg b;                                             //input in envrioement must be regs (otherwise how do they get the value)
reg cin;
wire s;                                                                                                         
wire cout;
full_adder  UUT(a,b,cin,s,cout);
always @(s or cout) begin
    $display ("The sum with carry is %b and %b when a is %b , b is %b and cin is %b\n",s,cout,a,b,cin);
end

initial begin
    a=0; b= 0;cin=0;
    #20;
    a = 1;b =1 ; cin = 0;
    #20 ;
    a=1 ; b=1; cin=1;
    #20
    $finish;
end

endmodule