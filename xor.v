module xoring (A,B,out_xor);
parameter INPUT_WIDTH=8;
input [INPUT_WIDTH-1:0] A,B;
output [INPUT_WIDTH-1:0] out_xor;
assign out_xor=  A^B ;
endmodule