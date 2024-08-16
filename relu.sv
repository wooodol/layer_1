`timescale 1ns / 1ps

module relu #(parameter
    IMAGE_WIDTH = 26,
    IMAGE_HEIGHT = 34,
    CHANNELS = 32,
    DATA_BITS = 32
)(
    input clk,
    input rst_n,
    input valid_in,
    input [DATA_BITS-1:0] data_in [0:CHANNELS-1],
    output reg valid_out,
    output reg [DATA_BITS-1:0] data_out [0:CHANNELS-1]
);

    reg cnt[1:0]; // cnt[0]: 현재 valid_in 신호 값, cnt[1]: 이전 valid_in 신호 값
    reg [IMAGE_WIDTH*IMAGE_HEIGHT-1:0] pixel_counter;
    
    reg[10:0] i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < CHANNELS; i = i + 1) begin
               data_out[i] <= 32'b0;
            end   
            valid_out <= 1'b0;
            pixel_counter <= 0;
            cnt[0] <= 0;
            cnt[1] <= 1;
        
        end else begin

            if (valid_in) begin
                // ReLU operation
                for (i = 0; i < CHANNELS; i = i + 1) begin
                    if ($signed(data_in[i]) > 0) begin
                        data_out[i] <= data_in[i];
                    end else begin
                        data_out[i] <= 32'b0;
                    end
                end
                
                if (pixel_counter < IMAGE_WIDTH * IMAGE_HEIGHT) begin
                    pixel_counter <= pixel_counter + 1;
                end else begin
                    pixel_counter <= 0;
                end
            end
            cnt[0] <= valid_in;  // 현재 valid_in 값을 cnt[0]에 저장
                // 이전 valid_in 값을 cnt[1]에 저장            
            // valid_out 신호 지연 처리
            assign valid_out = cnt[0];  // cnt[1]이 한 클럭 전의 valid_in 값을 갖고 있으므로 이를 valid_out에 할당
        end
    end

endmodule