`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2019 01:29:23 PM
// Design Name: 
// Module Name: testbech2_4decoder
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


module testbech2_4decoder;

    reg [1:0] test_a; 
    reg test_enable;
    
    wire [3:0] out_b;
    
    decoder2_4block dec2_4 (.a(test_a), .b(out_b), .enable(test_enable));
    
initial
begin    

    test_enable = 2'b1;
    
    test_a = 2'b00;
    # 200;
    test_a = 2'b01;
    # 200;
    test_a = 2'b10;
    # 200;
    test_a = 2'b11;
    # 200;
    
    test_enable = 2'b0;
    
    test_a = 2'b00;
    
    # 200;
    test_a = 2'b01;
    # 200;
    test_a = 2'b10;
    # 200;
    test_a = 2'b11;
    # 200;
    $stop;
    
end

endmodule
