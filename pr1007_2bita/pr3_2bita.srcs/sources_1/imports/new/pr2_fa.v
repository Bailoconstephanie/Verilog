`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 18:06:11
// Design Name: 
// Module Name: pr2_fa
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


module pr2_fa(
    input A,
    input B,
    input Ci,
    output S,
    output C
    );
    
    wire ha0_s, ha0_c;
    wire ha1_s, ha1_c;
    
    assign S = ha1_s;
    assign C = ha0_c | ha1_c;
    
    practice1_ha ha0( .A(A), .B(B), .S(ha0_s), .C(ha0_c) );
    practice1_ha ha1( .A(ha0_s), .B(Ci), .S(ha1_s), .C(ha1_c) );
    
    
endmodule
