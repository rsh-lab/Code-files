`timescale 1ns/1ns
`include "rotator.v"

module rotator_tb ();
    wire clk;
    reg [99:0] load;
    wire [1:0] ena;
    reg q;
    reg load_m;

    rotator UUT(
        .clk(clk),
        .ena(ena),
        .load(load),
        .q(q),
        .load_m(load_m)
    );
always #20 clk =!clk
initial begin
    $dumpfile("rotator_tb");
    $dumpvars(0,rotator_tb);
    clk=0;
    ena=2'b10;
    load={99{1'b1},1'b0};
    #40
    ena=2'b01;
    $finish;
    
end
endmodule