`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/24 16:22:30
// Design Name: 
// Module Name: ALU_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_test();
// 入力データを供給するレジスタ
reg [7:0] A;
reg [7:0] B;
reg [2:0] MODE;
// 出力データをモニタする
wire [7:0] OUT;
// テストする回路をインスタンスとして置く
ALU dut (
.A(A), .B(B), .MODE(MODE), .OUT(OUT)
);
// 入力データをいろいろ変える
initial begin
A <= 0; B <= 0; MODE<=0;
#10 A <= 8'b10101111; B <= 8'b01000001; MODE<=3'b000;
#10 A <= 8'b10100000; B <= 8'b10010001; MODE<=3'b001;
#10 A <= 8'b10101111; B <= 8'b11111111; MODE<=3'b010;
#10 A <= 8'b10100000; B <= 8'b11111111; MODE<=3'b011;
#10 A <= 8'b10101010; B <= 8'b11110000; MODE<=3'b100;
#10 A <= 8'b10101010; B <= 8'b11110000; MODE<=3'b101;
#10 A <= 8'b10101010; B <= 8'b11110000; MODE<=3'b110;
#10 A <= 8'b10101010; B <= 8'b11111111; MODE<=3'b111;
#10 $finish;
end
endmodule
