`timescale 1ns/1ns
`include "DFF.v"
module DFF_tb;
    reg CLK;
    reg D;
    wire out; 
    reg reset;
    
    DFF UUT(
        .clk(CLK),
        .D(D),
        .Q(out),
        .reset(reset)
        
    );

    always begin
         #20 CLK=!CLK;

    end
    always @ (out) begin
        $display ("this is the output %b \n",out);
    end
    initial begin
        $dumpfile("DFF_tb.vcd");
        $dumpvars(0, DFF_tb);
        CLK =0 ;
        reset =1 ;
        D=0;
        #10 reset=0;
        #10 D = 1;
        
        #10 D =0;
        #10 D = 1;
        #10 $finish;
    end
endmodule   