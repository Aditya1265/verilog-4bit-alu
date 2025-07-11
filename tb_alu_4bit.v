module tb_alu_4bit;
    reg [3:0] A, B, op;
    wire [3:0] result;
    wire ZF;

    alu_4bit uut (
        .A(A),
        .B(B),
        .op(op),
        .result(result),
        .ZF(ZF)
    );

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu_4bit);

        A = 4'b0101; B = 4'b0011; op = 4'b0000; #10; 
        A = 4'b0101; B = 4'b0011; op = 4'b0001; #10; 
        A = 4'b1100; B = 4'b1010; op = 4'b0010; #10;
        A = 4'b1100; B = 4'b1010; op = 4'b0011; #10; 
        A = 4'b1010; B = 4'b1010; op = 4'b0100; #10;
        A = 4'b1010; B = 4'b0000; op = 4'b0101; #10; 
        A = 4'b0001; B = 4'b0000; op = 4'b0110; #10; 
        A = 4'b0011; B = 4'b0000; op = 4'b0111; #10; 
        A = 4'b0011; B = 4'b0000; op = 4'b1000; #10;
        A = 4'b1000; B = 4'b0000; op = 4'b1001; #10; 
        A = 4'b1010; B = 4'b1010; op = 4'b1010; #10; 
        A = 4'b1000; B = 4'b0001; op = 4'b1010; #10; 

        #20 $finish;
    end
endmodule
