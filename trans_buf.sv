`timescale 1ns / 1ps

module trans_buf(
input clk,
input rst_n,
input reg valid_in,
input reg [31:0] data_in,
output reg valid_out,
output reg [31:0] data_out [0:883]
    );
    
reg state, delay;
reg [10:0] i;
reg [31:0] data_buf [0:883];

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        state <= 0;
        i <= 0;
        delay <= 0;
        valid_out <= 0;
    end
    else begin
        if (valid_in) begin
            if(state == 0)begin
                data_buf[i] <= data_in;
                i <= i + 1;
                if(i == 883) begin
                    i <= 0;
                    state <= 1;
                end
            end
        end
        if(state == 1) begin
            delay <= 1;
            data_out <= data_buf;
            valid_out <= 1;
            state <= 0;
        end
        if(delay)begin
            delay <= 0;
            valid_out <= 0;
        end
    end
end                           
            
endmodule
