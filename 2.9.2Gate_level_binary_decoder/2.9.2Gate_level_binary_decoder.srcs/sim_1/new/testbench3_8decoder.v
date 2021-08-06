`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2019 01:59:29 PM
// Design Name: 
// Module Name: testbench3_8decoder
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


module testbench3_8decoder;

    reg [2:0] test_a;
    reg enable;
    
    wire [7:0] out_b;
    
    decoder3_8block d3_8block(.a(test_a), .b(out_b), .enable(enable));

initial
begin

    enable = 1'b1;
    test_a = 3'b000;
    # 400;
    test_a = 3'b001;
    # 400;
    test_a = 3'b010;
    # 400;
    test_a = 3'b011;
    # 400;
    test_a = 3'b100;
    # 400;
    test_a = 3'b101;
    # 400;
    test_a = 3'b110;
    # 400;
    test_a = 3'b111;
    # 400;
    test_a = 3'b101;
    enable = 1'b0;
    # 400;

    $stop;
end

endmodule
