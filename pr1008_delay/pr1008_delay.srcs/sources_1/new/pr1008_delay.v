`timescale 1ns / 1ps    // 왼쪽: 시간 단위, 오른쪽: 시뮬레이션 단위
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:37:22
// Design Name: 
// Module Name: pr1008_delay
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


module pr1008_delay(

    );
    reg RST;
    
    initial
    begin
    RST = 1'b0;
    #10;
    RST = 1'b1;
    end
    
endmodule
