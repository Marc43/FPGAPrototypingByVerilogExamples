`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2020 21:00:25
// Design Name: 
// Module Name: test
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


module test(
        input CLK100MHZ,

        input [15:0] SW,
        output CA,
        output CB,
        output CC,
        output CD,
        output CE,
        output CF,
        output CG,
        output DP,
        output [3:0] AN
        
    );
    
    reg rsn;
    
    wire [7:0] pre_display;
    
    initial
    begin
        rsn <= 0;
        #15
        rsn <= 1;
    end
    
    top top0(
        .clk(CLK100MHZ),
        .rsn(rsn),
        .an(AN),
        .display(pre_display)
    );
    
    assign CA = pre_display[0];
    assign CB = pre_display[1];
    assign CC = pre_display[2];
    assign CD = pre_display[3];
    assign CE = pre_display[4];
    assign CF = pre_display[5];
    assign CG = pre_display[6];
    assign DP = pre_display[7];
    
endmodule
