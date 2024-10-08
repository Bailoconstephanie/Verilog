`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 17:58:55
// Design Name: 
// Module Name: practice1_ha
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


module practice1_ha(
    input A,
    input B,
    output S,
    output C
    );
    
    assign S = A ^ B;
    assign C = A & B;
    
endmodule
