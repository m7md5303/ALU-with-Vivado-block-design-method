module sub (A,B,out_sub);
parameter INPUT_WIDTH=8;
input [INPUT_WIDTH-1:0] A,B;
output [INPUT_WIDTH-1:0] out_sub;
assign out_sub=  A-B ;
endmodule