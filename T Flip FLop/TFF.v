module(
    input T;
    output reg Q;
    input clk;
)

    always@(posedge clk)
        if(T || Q  )
            Q<=1;
        else 
            Q<=0;
endmodule