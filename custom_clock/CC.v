module CC(
    input reset,  
    input clk,  
    input H_1,
    input H_2,
    input M_1,
    input M_2,
    input S_1,
    input S_2,
    input alarm,
    output reg [0:0] H1,
    output reg [3:0] H2,
    output reg [2:0] M1,
    output reg [3:0] M2,
    output reg [2:0] S1,
    output reg [3:0] S2,
    output reg [0:0] led_alarm
);



always @(posedge clk or posedge reset) begin
    if (reset) begin
        H1 <= 0;
        H2 <= 0;
        M1 <= 0;
        M2 <= 0;
        S1 <= 0;
        S2 <= 0;
        led_alarm<=0;
    end 
    else begin
        if (S2 == 9) begin
            S2 <= 0;
            if (S1 == 5) begin
                S1 <= 0;
                if (M2 == 9) begin
                    M2 <= 0;
                    if (M1 == 5) begin
                        M1 <= 0;
                        if (H2 == 9) begin
                            H2 <= 0;
                            if (H1 == 1) begin
                                H1 <= 0;
                            end else begin
                                H1 <= H1 + 1;
                            end
                        end else begin
                            H2 <= H2 + 1;
                        end
                    end else begin
                        M1 <= M1 + 1;
                    end
                end else begin
                    M2 <= M2 + 1;
                end
            end else begin
                S1 <= S1 + 1;
            end
        end else begin
            S2 <= S2 + 1;
        end
    end

    if (alarm) begin
        if(H_1==H1 & H_2 == H2 & M_1==M1 & M_2==M2 & S_1 == S1 & S_2 == S2)  
            led_alarm<=1;
    end




end





endmodule


