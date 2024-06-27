//TriState use in a concrete example
reg[31:0] mem [0:7];   // 8 registers of 32 bit each
wire [2:0] a;
wire [31:0] d;
wire read_enable;
//we are in combinatiional logic as we are assigbibg to wires
//we alwso have to use bloicking asssignments
    assign d = read_enable ? mem[a] :  32'b z;  
    //equivalent to not contating anythiuhng 
