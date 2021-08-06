`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2020 13:56:17
// Design Name: 
// Module Name: disp_mux
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

module disp_mux(
    input [7:0] to_display_u0, to_display_u1, to_display_u2, to_display_u3,
    output reg [7:0] to_display_o,
    output reg [3:0] an,
    input clk,
    input rsn
    );
    
    localparam N = 22;
    
    reg [N-1:0] freq_counter;
    wire [N-1:0] freq_counter_next;

    reg refresh_clk;
    
    initial
    begin
        refresh_clk = 0;
    end
    
    // Time window logic
    
    assign freq_counter_next = freq_counter + 1;
    
    always @(posedge clk, posedge rsn)
        if (rsn) begin
            freq_counter <= 0;
        end
        else begin
            freq_counter <= freq_counter_next;
        end
        
    always @*
    
        case (freq_counter[N-1:N-2])
            2'b00:
                begin
                    an <= 4'b0001;
                    to_display_o <= to_display_u0;
                end    
            2'b01:     
                begin  
                    an <= 4'b0010;
                    to_display_o <= to_display_u1;
                end    
            2'b10:     
                begin  
                    an <= 4'b0100;
                    to_display_o <= to_display_u2;
                end
            2'b11:
                begin
                    an <= 4'b1000;
                    to_display_o <= to_display_u3;
                end 
        endcase       
    

endmodule
