`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:46:31
// Design Name: 
// Module Name: pr1008_always
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


module pr1008_always( );
    
    reg a,b,out;
    
    initial
    begin
    a = 1'b0;
    b = 1'b1;
    #10;
    a = 1'b1;
    #10;
    b = 1'b0;
    #10;
    a = 1'b0;
    #10
    a = 1'b1;
    b = 1'b1;    
    end
    
       
    
    
endmodule
