`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/24 15:44:51
// Design Name: 
// Module Name: ALU
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


module ALU(
input [7:0] A,B,
output [7:0] OUT,
input [2:0] MODE );

//wire [2:0] temp;

assign OUT=ALU_func(A,B,MODE);

function [7:0] ALU_func;
    //input ALU;
    input [7:0] A,B;
    input [2:0] MODE;
    //output [7:0] OUT;
    reg [7:0] temp;
    begin
        case(MODE)
            3'b000:  temp=A+B;
            3'b001:  temp=A-B;
            3'b010:  temp=A+1;
            3'b011:  temp=A-1;
            3'b100:  temp=A&B;
            3'b101:  temp=A|B;
            3'b110:  temp=A^B;
            3'b111:  temp=~A;
      endcase
      ALU_func=temp;
    end
 endfunction
endmodule
