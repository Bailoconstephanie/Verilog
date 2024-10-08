`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 19:04:10
// Design Name: 
// Module Name: pr1007_Operators
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


module pr1007_Operators(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] d,
    input [3:0] e,
    input F,
    output [3:0] OUT_AND,
    output [3:0] OUT_OR,
    output [3:0] OUT_XOR,
    output [3:0] OUT_NOT, 
    output AND, 
    output OR, 
    output NOT, 
    output OUT_RELATIONAL, 
    output OUT_EQUALITY, 
    output out_equal, output [2:0]OUT_REDUCTION, output [3:0]OUT_CONDITIONAL, output [7:0]OUT_CONCATENATION, output [7:0]SHIFT, output OUT_ARI,output shift
    );
    wire signed [3:0]S= 4'b1101;
    // Bitwise Operators
    assign OUT_AND = A & B;
    assign OUT_OR = A | C;
    assign OUT_XOR = A ^ B;
    assign OUT_NOT = ~C;
    
    // Logical  Operators 
    assign AND = A && B;
    assign OR = A || B;
    assign NOT = !C;
    
    // Relational Operators: >, <, >=, <=
    assign OUT_RELATIONAL = A > B;
    
    //Equality Operators: ==, !=, ===, !==, ===와 !==는 x,z까지도 판별
    assign OUT_EQUALITY = A == B;
    assign out_equal = d === e;
    
    //Reduction Operators, &는 0이 하나라도 있으면 0, |은 1이 하나라도 있으면 1, XOR은 1이 짝수면 0, 홀수면 1
    assign OUT_REDUCTION[0] = &A; // 0
    assign OUT_REDUCTION[1] = ^A; // 0
    assign OUT_REDUCTION[2] = |A; // 1
    
    //Conditional operator
    assign OUT_CONDITIONAL = F ? A:B; // 참이면 A, 거짓이면 B
    
    //Concatenation Operator
    assign OUT_CONCATENATION = {A,B}; // 1010_1110, OUT_CONCATENATION이 6비트면 상위 앞 2비트가 짤림
    
    //Shift Operators
    assign SHIFT[3:0] = A << 1; // 1010 0100
    assign SHIFT[7:4] = A >>> 1; // 1010 -> 1101 0101
    
    //Arithmetic Operators
    assign OUT_ARI = A + B;
   
    assign shift = S>>>1;
endmodule
