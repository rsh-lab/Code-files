module decod3_8(
    input A,
    input B,
    input C,
    output reg Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8
);

always @*
    case ({A,B,C})
        3'b000: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00000001;
        3'b001: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00000010;
        3'b010: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00000100;
        3'b011: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00001000;
        3'b100: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00010000;
        3'b101: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00100000;
        3'b110: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b01000000;
        3'b111: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b10000000;
        default: {Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8} = 8'b00000000;
  endcase
endmodule
