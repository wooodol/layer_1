`timescale 1ns / 1ps

module normalize(
    input [7:0] data_in,
    input reg valid_in,
    input clk,
    output reg [15:0] data_out,
    output reg valid_out,
    input rst_n
);

   
    always @(posedge clk)begin  
        valid_out <= valid_in;
    end
    
    always @(posedge clk) begin
        if(!rst_n)begin
            valid_out <= 0;
        end
        else begin
        if(valid_in)begin        
            data_out = (data_in * 16'sd257) - 16'sd32768;
        end         
        end  
    end

endmodule
