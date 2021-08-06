`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2020 20:43:47
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input rsn,
    
    input [15:0] sw,
    output [7:0] display,
    output [3:0] an
    
    );
    
    wire [7:0] sseg_aux0;
    wire [7:0] sseg_aux1;
    wire [7:0] sseg_aux2;
    wire [7:0] sseg_aux3;
    wire [7:0] to_display_o_aux;
    
    hex_to_sseg_LED hex_to_sseg_LED_0(
        .digit_to_dec(sw[3:0]),
        .sseg(sseg_aux0),
        .dp(0)
    );
    
    hex_to_sseg_LED hex_to_sseg_LED_1(
        .digit_to_dec(sw[7:4]),
        .sseg(sseg_aux1),
        .dp(0)
    );
    
   hex_to_sseg_LED hex_to_sseg_LED_2(
        .digit_to_dec(sw[11:8]),
        .sseg(sseg_aux2),
        .dp(0)
    );
    
   hex_to_sseg_LED hex_to_sseg_LED_3(
        .digit_to_dec(sw[15:12]),
        .sseg(sseg_aux3),
        .dp(0)
    );
    
    disp_mux disp_mux0(
        .to_display_u0(sseg_aux0),
        .to_display_u1(sseg_aux1),
        .to_display_u2(sseg_aux2),
        .to_display_u3(sseg_aux3),
        .to_display_o(to_display_o_aux),
        .an(an),
        .clk(clk),
        .rsn(rsn)
    );
    
    assign display = to_display_o_aux;

endmodule
