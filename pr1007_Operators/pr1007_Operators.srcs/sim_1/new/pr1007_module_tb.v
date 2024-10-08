`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 19:07:27
// Design Name: 
// Module Name: pr1007_module_tb
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


module pr1007_module_tb(

    );
    
    pr1007_Operators uut1( .A(4'b1010), .B(4'b1110), .C(4'b0101), .d(4'bx1z0), .e(4'bx1z0), .F(1'b1) ); // Let's see how Operators operate in Verilog, 시뮬레이션: 보드 없이 동작을 확인하는 것
endmodule
