`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:57:28
// Design Name: 
// Module Name: pr1008_blocking_nonblocking
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


module pr1008_blocking_nonblocking(

    );
    
    reg clk, a, b, c;
    
    always @ (posedge clk)
    begin
    a <= b;
    end
    
    always @ (posedge clk)
    begin
    c <= a;
    end
    
    initial
    begin
    clk = 0;
    b = 0;
    #5;
    clk = 1;
    #5;
    clk = 0;
    b = 1;
    #5;
    clk = 1;
    #1;
    b = 0;
    #5;
    clk=0;
    #5;
    clk = 1;
    #5;
    clk = 0;
    end
    
endmodule // blocking으로 하면 a와 c가 똑같다, 이때 non-blocking으로 한다면 어떨까? => a와 c가 다른 값을 같는다. 이는 clk이 있을 때 non-blocking을 사용하는 경우 delay를 고려하기 때문이다 (실제 H/W) 따라서 clk이 있는 경우 non-blocking을 써줘야 한다
