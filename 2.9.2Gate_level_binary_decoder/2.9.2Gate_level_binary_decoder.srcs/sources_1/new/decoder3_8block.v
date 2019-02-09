`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2019 09:54:57 PM
// Design Name: 
// Module Name: decoder3_8block
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


module decoder3_8block(
    input enable,
    input [2:0] a,
    output [7:0] b
    );
    
    wire [7:0] b_tmp;
    
    decoder2_4block MSB_decoder_2_4 (.a(a[1:0]), .enable(~a[2]), .b(b_tmp[3:0]));
    decoder2_4block LSB_decoder_2_4 (.a(a[1:0]), .enable( a[2]), .b(b_tmp[7:4]));
    
    
    
endmodule
