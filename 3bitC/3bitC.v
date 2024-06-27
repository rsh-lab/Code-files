`ifndef bit3C_MODULE
`define bit3C_MODULE
module bit3C(
    input [2:0]A,
    input [2:0]B,
    output wire equals, greater, lesser 
);

    assign equals = (A==B);
    assign greater =(A>B);
    assign lesser =(A<B);
endmodule
`endif