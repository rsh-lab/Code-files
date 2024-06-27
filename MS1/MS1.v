`ifndef MooreS_MOUDLE
`define MooreS_MOUDLE

module MooreS (
    input reset,
    input main,
    output out

);

reg [0:1] state,
parameter S0=0, S1=1 ;
initial begin
    state = S1;
      out = 0;
end
always @(state, main, posedge reset)begin
    case(state)
    S1 :  if (reset)
            state<=S1;
          else if (main == 0) begin
            state <=S0;
            out = 0; 
          end    
          else
            begin
                 state <=S0;
                 out = 1; 
            end      
    S2 : if(resest)
            state=<=S1;
        else if ( main == 0)begin
             state <=S1;
             out = 1;
        else
            state <=S0;
            out = 0;       
        end
    endcase
            
end

// always @ (*)
// begin
//     if(reset)
//         ns <= S1;
//     else 
//         ns <= state;          
// end

endmodule