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
    
endmodule // blocking���� �ϸ� a�� c�� �Ȱ���, �̶� non-blocking���� �Ѵٸ� ���? => a�� c�� �ٸ� ���� ���´�. �̴� clk�� ���� �� non-blocking�� ����ϴ� ��� delay�� ����ϱ� �����̴� (���� H/W) ���� clk�� �ִ� ��� non-blocking�� ����� �Ѵ�
