`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2019 08:48:59 PM
// Design Name: 
// Module Name: physical_mapping
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


module physical_mapping(
    input [7:0] SW,
    output [0:0]LED
    );
    
    greater_than_block4bits comparator_gt(.a(SW[7:4]), .b(SW[3:0]), .a_greater_than_b(LED));
    
endmodule
