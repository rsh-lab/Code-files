`timescale 1ns/1ns
`include "bit4count.v"

module bit4count_tb();
    wire A,B,C,D;
    reg reset;
    reg clk;



bit4count UUT(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .clk(clk),
    .reset(reset)
);
 always #20 clk=!clk;
    initial begin
        $dumpfile("bit4count_tb.vcd");
        $dumpvars(0,bit4count_tb);
        clk=0;
        #320;
        reset=1;
        #10;
        reset=0;
        #90;
        reset=1;
        #20;
        $finish;
    end


endmodule