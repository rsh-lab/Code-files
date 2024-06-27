`timescale 1s/1ns
module CC_env();
    reg clk;
    reg reset;
    reg H_1;
    reg H_2;
    reg M_1;
    reg M_2;
    reg S_1;
    reg S_2;
    reg alarm;
    wire [0:0] H1;
    wire [3:0] H2;
    wire [2:0] M1;
    wire [3:0] M2;
    wire [2:0] S1;
    wire [3:0] S2;
    wire [0:0] led_alarm;

    CC UUT (
        .reset(reset), 
        .clk(clk), 
        .alarm(alarm),
        .H1(H1), 
        .H2(H2),    
        .M1(M1), 
        .M2(M2), 
        .S1(S1), 
        .S2(S2),
        .H_1(H_1), 
        .H_2(H_2),    
        .M_1(M_1), 
        .M_2(M_2), 
        .S_1(S_1), 
        .S_2(S_2),
        .led_alarm(led_alarm)
        
    );
  // clk=1;      //
    initial clk = 0;
    always begin

        #0.5 clk = ~clk;
    end

    always @(posedge clk) $display("The time is  %d%d : %d%d : %d%d and alarm is %d", H1, H2, M1, M2, S1, S2,led_alarm);

    initial begin
        reset = 1;
        #1;
        reset = 0;
        #86660;
        $finish;
    end

    initial begin
     
        H_1<=0;
        H_2<=1;
        M_2<=0;
        M_1<=0;
        S_2<=0;
        S_1<=0;
           #200;
        alarm = 1;
        #81550;
        reset =1;
    end
    



endmodule























