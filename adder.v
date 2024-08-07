module adderx (A,B,out_add);
parameter INPUT_WIDTH=8;
input [INPUT_WIDTH-1:0] A,B;
output [INPUT_WIDTH-1:0] out_add;
assign out_add=  A+B ;
endmodule