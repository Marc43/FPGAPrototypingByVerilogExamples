`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2019 09:48:21 PM
// Design Name: 
// Module Name: decoder2_4block
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


module decoder2_4block(
    input [1:0] a,
    output [3:0] b,
    input enable
    );
    
    assign b[0] = ~a[0] & ~a[1] & enable;
    assign b[1] = ~a[0] &  a[1] & enable;
    assign b[2] =  a[0] & ~a[1] & enable;
    assign b[3] =  a[0] &  a[1] & enable; 
    
endmodule
