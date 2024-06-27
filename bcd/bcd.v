module BCD_Counter (
  input wire clk,    
  input wire rst,    
  output reg [3:0] q, 
  output wire en_ones, 
  output wire en_tens,  
  output wire en_hundreds  
);


reg [11:0] counter;

reg [3:0] state;

assign en_ones = (state == 4'b0000);
assign en_tens = (state == 4'b0001);
assign en_hundreds = (state == 4'b0010);


always @(posedge clk or posedge rst) begin
  if (rst) begin
    counter <= 12'b0000_0000_0000;
    state <= 4'b0000;
  end else begin
    counter <= counter + 1;

  
    case (state)
      4'b0000: q <= counter[3:0];
      4'b0001: q <= counter[7:4];
      4'b0010: q <= counter[11:8];
      4'b0011: q <= 4'b0000; 
      default: q <= 4'b0000; 
    endcase

    
    if (state == 4'b0011) begin
      state <= 4'b0000;
    end else begin
      state <= state + 1;
    end
  end
end

endmodule
