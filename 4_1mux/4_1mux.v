module mux4_1(
    input A,
    input B,
    input C,
    input D,
//    input clk;
    input S1,
    input S2,
    output reg Q
);

    always @(*)
        if(S1 && S2)
        Q<=D;
        else if(S1 && !S2)
        Q<=C;
        else if(!S1 && S2)
        Q<=B;
        else 
        Q<=A;
endmodule

