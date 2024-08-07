module mux (in_add,in_sub,in_xor,in_mult,opcode,out_alu,clk,rst);
parameter INPUT_WIDTH=8;
parameter OPCODE_WIDTH=2;
input [INPUT_WIDTH-1:0] in_add,in_mult,in_sub,in_xor ;
input [OPCODE_WIDTH-1:0] opcode;
input clk,rst;
output [INPUT_WIDTH-1:0] out_alu;
reg [INPUT_WIDTH-1:0] out_alu_reg;
always @(negedge clk) begin
    if(rst) begin
        out_alu_reg<=0;
    end
    else begin
        case (opcode)
           2'b00 : out_alu_reg<=in_add;
           2'b01 : out_alu_reg<=in_sub;
           2'b10 : out_alu_reg<=in_xor;
           2'b11 : out_alu_reg<=in_mult; 
        endcase
    end
end 
assign out_alu=out_alu_reg;
endmodule