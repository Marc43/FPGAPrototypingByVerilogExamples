`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2019 07:56:08 PM
// Design Name: 
// Module Name: time_multiplexing_module_sseg
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


module time_multiplexing_module_sseg(
    input pcero,
    input clock_signal,
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [7:0] in4,
    input [7:0] in5,
    input [7:0] in6,
    input [7:0] in7,
    
    output reg [7:0] sseg,  //sseg to display in seven segment LED
    output reg [3:0] an     //control to decide which s-segment is displayed
    );
    
    reg [20:0] counter;
    
    always @(posedge clock_signal, posedge pcero)
    begin
        if (pcero) 
            counter = 0;
        else
            counter = counter + 1;
    end
    
    always @*
    begin
        case(counter[20:18])
            3'b000:
                begin 
                sseg = in0; 
                an = 8'hfe;
                end
            3'b001: 
                begin
                   sseg = in1;
                   an = 8'hfd;
                end
            3'b010: 
                begin
                   sseg = in2;
                   an = 8'hfb;
                end    
            3'b011:
                begin 
                    sseg = in3;
                    an = 8'hf7;
                end    
            3'b100:
                begin 
                    sseg = in4;
                    an = 8'hef;
                end    
            3'b101: 
                begin
                    sseg = in5;
                    an = 8'hdf;
                end    
            3'b110:
                begin 
                    sseg = in6;
                    an = 8'hbf;
                end    
            3'b111:
                begin 
                    sseg = in7;
                    an = 8'h7f;
                end    
            default:
                begin 
                    sseg = 8'bxxxxxxxx;
                    an = 8'hxx;
                end    
        endcase
    end
    
    
    
endmodule
