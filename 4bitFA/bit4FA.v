module bit4FA(
    input [3:0]A,    //shit this is //implement at RTL level  
    input [3:0]B,
    output wire [3:0] S,
    output wire C        //only 1 final carry is needed
    );


 // reg [3:0] sum_temp;   //tempeorary summ
  //we'll have to sue blockign assignemnts  as the Carry fo first operation is required for cal;cualtion the second operation
  wire carry0,carry1,carry2; 
  full_adder FA0 (A[0],B[0],1'b0,S[0],carry0);                      //cin is  0 for the first FA 
  full_adder FA1 (A[1],B[1],carry0,S[1],carry1);
  full_adder FA2 (A[2],B[2],carry1,S[2],carry2);
 full_adder FA3 (A[3],B[3],carry2,S[3],C);
 
endmodule


