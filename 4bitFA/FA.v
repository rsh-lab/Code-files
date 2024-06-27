module full_adder (A,B,Cin,sum,Cout);
input  A;
input  B;
input   Cin;
output wire sum;
output wire Cout;

//this is a combinational circuit
assign sum= A^B^Cin; 
assign Cout = (A&B)|(B&Cin)|(Cin&A);

endmodule


