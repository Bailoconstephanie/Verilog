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
    ); // Ci 를 선언할 필요가 없음 why?: FA 함수에서 1비트짜리로 쓰고 있고 0 값을 이미 줬을 뿐더러 FA0에서만 사용되기 때문
    
    wire ca0;
    
     pr2_fa FA0( .A(A[0]), .B(B[0]), .Ci(1'b0), .S(S[0]), .C(ca0) );
     pr2_fa FA1( .A(A[1]), .B(B[1]), .Ci(ca0), .S(S[1]), .C(Co) ); // C(Co)에서 C: full adder 안에 있는 Port, ()안에 있는 것이 Wire, 즉 지금 모듈의 변수?
    
endmodule
