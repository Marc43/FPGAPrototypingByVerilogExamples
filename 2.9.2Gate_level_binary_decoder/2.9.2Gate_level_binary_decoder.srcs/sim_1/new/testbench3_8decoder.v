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

    enable = 2'b1;
    test_a = 2'b000;
    # 200;
    test_a = 2'b001;
    # 200;
    test_a = 2'b010;
    # 200;
    test_a = 2'b011;
    # 200;
    test_a = 2'b100;
    # 200;
    test_a = 2'b101;
    # 200;
    test_a = 2'b110;
    # 200;
    test_a = 2'b111;
    # 200;
    test_a = 2'b101;
    enable = 2'b0;
    #200;

    $stop;
end

endmodule
