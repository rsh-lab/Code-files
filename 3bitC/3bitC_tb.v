`timescale 1ns/1ns
`include "3bitC.v"

module bit3C_tb;
    reg [2:0]A;
    reg [2:0]B;
    wire EQ;
    wire GT;
    wire LS;
    bit3C UUT(
        .A(A),
        .B(B),
        .equals(EQ),
        .greater(GT),
        .lesser(LS)
    );
    initial begin
        $dumpfile("3bitC_tb.vcd");
        $dumpvars(0,bit3C_tb);
        #20
        A<=3'b010;
        B<=3'b110;

        #30
        A<=B;
        B<=3'b010;
       #20
        $finish;
    end


endmodule
