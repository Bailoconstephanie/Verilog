`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 18:19:10
// Design Name: 
// Module Name: pr3_2bita
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


module pr3_2bita(
    input [1:0] A,
    input [1:0] B,
    output [1:0] S,
    output Co
    ); // Ci �� ������ �ʿ䰡 ���� why?: FA �Լ����� 1��Ʈ¥���� ���� �ְ� 0 ���� �̹� ���� �Ӵ��� FA0������ ���Ǳ� ����
    
    wire ca0;
    
     pr2_fa FA0( .A(A[0]), .B(B[0]), .Ci(1'b0), .S(S[0]), .C(ca0) );
     pr2_fa FA1( .A(A[1]), .B(B[1]), .Ci(ca0), .S(S[1]), .C(Co) ); // C(Co)���� C: full adder �ȿ� �ִ� Port, ()�ȿ� �ִ� ���� Wire, �� ���� ����� ����?
    
endmodule
