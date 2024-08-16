`timescale 1ns / 1ps
// First padding module: 1 x 26 x 34 ; channel x width x height

module clock_padding_first (

    input  wire clk,
    input  wire rst_n, // Active-low reset signal
    input  reg [31:0] data [0:883], // 1x3x4의 입력 데이터
    input reg valid_in,
    output reg  [31:0] output_data_buffer [0:1007], // 1x5x6의 출력 데이터
    output reg [31:0] output_data,
    output reg valid_out // 완료 신호
);
    reg state;
    reg[10:0] i, j;
  
    reg [9:0] output_index; // Index for output data

    // Sequential block to handle initialization and output data processing
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Asynchronous reset: Initialize output data and reset done signal
            for (i = 0; i < 1008; i = i + 1) begin
                output_data_buffer[i] <= 32'h00000000;
            end
            valid_out <= 0;
            state <= 0;          
            output_index <= 0; // Initialize output index
            
        end else if (valid_in) begin
            // Perform initialization
            for (i = 0; i < 26; i = i + 1) begin
                for (j = 0; j < 34; j = j + 1) begin
                    output_data_buffer[(i + 1) * 36 + (j + 1)] <= data[i * 34 + j];
                end
            end
            
             // Set done signal after initialization
            state <= 1;
        end
    end

    // Always block to handle output data and display
    always @(posedge clk) begin
        if(state) begin
        
            if (output_index < 1008) begin
                // Output data
                output_data <= output_data_buffer[output_index];
                output_index <= output_index + 1;
                valid_out <= 1;
            end else begin
                // Finish simulation after displaying all output data
                valid_out <= 0;
                state <= 0;
            end
        
        end
    end

endmodule