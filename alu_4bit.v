module alu_4bit(
    input [3:0]A,
    input [3:0]B,
    input [3:0]op,
    output reg [3:0]result,
    output reg ZF
);
always @(*)
 begin
    case(op)
    4'b0000 : result = A+B;
    4'b0001 : result = A-B;
    4'b0010 : result = A&B;
    4'b0011 : result = A|B;
    4'b0100 : result = A^B;
    4'b0101 : result = ~A;
    4'b0110 : result = A+1;
    4'b0111 : result = A-1;
    4'b1000 : result = A<<1;
    4'b1001 : result = A>>1;
    4'b1010 : result = (A==B) ? 4'b0000 : 4'b0001;
    default result = 4'b0000;
    endcase
    ZF= (result == 4'b0000) ? 1'b1 : 1'b0;
end
endmodule