`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:16:15
// Design Name: 
// Module Name: pr1008_3bitcnt
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


module pr1008_3bitcnt(
    input RST,
    input CLK,
    output [2:0] Q
    );
    
    wire n1, n2;
    assign n1 = Q[0] ^ Q[1];
    assign n2 = Q[2] ^ (Q[0] & Q[1]);
    
    dff dff0(.rst(RST), .clk(CLK), .d(~Q[0]), .q(Q[0]));
    dff dff1(.rst(RST), .clk(CLK), .d(n1), .q(Q[1]));
    dff dff2(.rst(RST), .clk(CLK), .d(n2), .q(Q[2]));
    
endmodule

module dff(
    input rst,
    input clk,
    input d,
    output reg q
    );
    always @ (posedge clk)
    begin
    if(rst == 1)
    q <= 1'b0;
    else
    q <= d;
    end
    
endmodule
