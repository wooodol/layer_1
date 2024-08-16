`timescale 1ns / 1ps

module max_pooling_layer_top (
    input wire clk,
    input wire rst_n,
    input wire valid_in,
    input wire [31:0] data_in_1 [0:1][0:1],
    input wire [31:0] data_in_2 [0:1][0:1],
    input wire [31:0] data_in_3 [0:1][0:1],
    input wire [31:0] data_in_4 [0:1][0:1],
    input wire [31:0] data_in_5 [0:1][0:1],
    input wire [31:0] data_in_6 [0:1][0:1],
    input wire [31:0] data_in_7 [0:1][0:1],
    input wire [31:0] data_in_8 [0:1][0:1],
    input wire [31:0] data_in_9 [0:1][0:1],
    input wire [31:0] data_in_10 [0:1][0:1],
    input wire [31:0] data_in_11 [0:1][0:1],
    input wire [31:0] data_in_12 [0:1][0:1],
    input wire [31:0] data_in_13 [0:1][0:1],
    input wire [31:0] data_in_14 [0:1][0:1],
    input wire [31:0] data_in_15 [0:1][0:1],
    input wire [31:0] data_in_16 [0:1][0:1],
    input wire [31:0] data_in_17 [0:1][0:1],
    input wire [31:0] data_in_18 [0:1][0:1],
    input wire [31:0] data_in_19 [0:1][0:1],
    input wire [31:0] data_in_20 [0:1][0:1],
    input wire [31:0] data_in_21 [0:1][0:1],
    input wire [31:0] data_in_22 [0:1][0:1],
    input wire [31:0] data_in_23 [0:1][0:1],
    input wire [31:0] data_in_24 [0:1][0:1],
    input wire [31:0] data_in_25 [0:1][0:1],
    input wire [31:0] data_in_26 [0:1][0:1],
    input wire [31:0] data_in_27 [0:1][0:1],
    input wire [31:0] data_in_28 [0:1][0:1],
    input wire [31:0] data_in_29 [0:1][0:1],
    input wire [31:0] data_in_30 [0:1][0:1],
    input wire [31:0] data_in_31 [0:1][0:1],
    input wire [31:0] data_in_32 [0:1][0:1],
    output reg [31:0] data_out_1,
    output reg [31:0] data_out_2,
    output reg [31:0] data_out_3,
    output reg [31:0] data_out_4,
    output reg [31:0] data_out_5,
    output reg [31:0] data_out_6,
    output reg [31:0] data_out_7,
    output reg [31:0] data_out_8,
    output reg [31:0] data_out_9,
    output reg [31:0] data_out_10,
    output reg [31:0] data_out_11,
    output reg [31:0] data_out_12,
    output reg [31:0] data_out_13,
    output reg [31:0] data_out_14,
    output reg [31:0] data_out_15,
    output reg [31:0] data_out_16,
    output reg [31:0] data_out_17,
    output reg [31:0] data_out_18,
    output reg [31:0] data_out_19,
    output reg [31:0] data_out_20,
    output reg [31:0] data_out_21,
    output reg [31:0] data_out_22,
    output reg [31:0] data_out_23,
    output reg [31:0] data_out_24,
    output reg [31:0] data_out_25,
    output reg [31:0] data_out_26,
    output reg [31:0] data_out_27,
    output reg [31:0] data_out_28,
    output reg [31:0] data_out_29,
    output reg [31:0] data_out_30,
    output reg [31:0] data_out_31,
    output reg [31:0] data_out_32,
    output reg valid_out
);
reg[10:0]delay;
reg cnt[1:0];
    // 각 max_pooling 모듈에 들어가는 입력을 설정하는 블록
    reg [31:0] data_in_i [0:31][0:1][0:1];

    // 각 max_pooling 모듈에서 나오는 출력
    reg [31:0] max_out [0:31];

    // Generate 블록에서 각 입력 값을 설정
    generate
        genvar i;
        for (i = 0; i < 32; i = i + 1) begin : gen_max_pooling
            always @(*) begin
            if(valid_in == 1) begin
                case(i)
                    0: data_in_i[i] = data_in_1;
                    1: data_in_i[i] = data_in_2;
                    2: data_in_i[i] = data_in_3;
                    3: data_in_i[i] = data_in_4;
                    4: data_in_i[i] = data_in_5;
                    5: data_in_i[i] = data_in_6;
                    6: data_in_i[i] = data_in_7;
                    7: data_in_i[i] = data_in_8;
                    8: data_in_i[i] = data_in_9;
                    9: data_in_i[i] = data_in_10;
                    10: data_in_i[i] = data_in_11;
                    11: data_in_i[i] = data_in_12;
                    12: data_in_i[i] = data_in_13;
                    13: data_in_i[i] = data_in_14;
                    14: data_in_i[i] = data_in_15;
                    15: data_in_i[i] = data_in_16;
                    16: data_in_i[i] = data_in_17;
                    17: data_in_i[i] = data_in_18;
                    18: data_in_i[i] = data_in_19;
                    19: data_in_i[i] = data_in_20;
                    20: data_in_i[i] = data_in_21;
                    21: data_in_i[i] = data_in_22;
                    22: data_in_i[i] = data_in_23;
                    23: data_in_i[i] = data_in_24;
                    24: data_in_i[i] = data_in_25;
                    25: data_in_i[i] = data_in_26;
                    26: data_in_i[i] = data_in_27;
                    27: data_in_i[i] = data_in_28;
                    28: data_in_i[i] = data_in_29;
                    29: data_in_i[i] = data_in_30;
                    30: data_in_i[i] = data_in_31;
                    31: data_in_i[i] = data_in_32;
                endcase
                end
            end

            max_pooling u_max_pooling (
                .clk(clk),
                .rst_n(rst_n),
                .data_in0(data_in_i[i][0][0]),
                .data_in1(data_in_i[i][0][1]),
                .data_in2(data_in_i[i][1][0]),
                .data_in3(data_in_i[i][1][1]),
                .data_out(max_out[i])
            );
        end
    endgenerate

    // 출력 처리 블록
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset output
            data_out_1 <= 32'b0;
            data_out_2 <= 32'b0;
            data_out_3 <= 32'b0;
            data_out_4 <= 32'b0;
            data_out_5 <= 32'b0;
            data_out_6 <= 32'b0;
            data_out_7 <= 32'b0;
            data_out_8 <= 32'b0;
            data_out_9 <= 32'b0;
            data_out_10 <= 32'b0;
            data_out_11 <= 32'b0;
            data_out_12 <= 32'b0;
            data_out_13 <= 32'b0;
            data_out_14 <= 32'b0;
            data_out_15 <= 32'b0;
            data_out_16 <= 32'b0;
            data_out_17 <= 32'b0;
            data_out_18 <= 32'b0;
            data_out_19 <= 32'b0;
            data_out_20 <= 32'b0;
            data_out_21 <= 32'b0;
            data_out_22 <= 32'b0;
            data_out_23 <= 32'b0;
            data_out_24 <= 32'b0;
            data_out_25 <= 32'b0;
            data_out_26 <= 32'b0;
            data_out_27 <= 32'b0;
            data_out_28 <= 32'b0;
            data_out_29 <= 32'b0;
            data_out_30 <= 32'b0;
            data_out_31 <= 32'b0;
            data_out_32 <= 32'b0;
            valid_out <= 1'b0;
            cnt[0] <= 0;
            cnt[1] <= 1;
            
        end else begin
            data_out_1 <= max_out[0];
            data_out_2 <= max_out[1];
            data_out_3 <= max_out[2];
            data_out_4 <= max_out[3];
            data_out_5 <= max_out[4];
            data_out_6 <= max_out[5];
            data_out_7 <= max_out[6];
            data_out_8 <= max_out[7];
            data_out_9 <= max_out[8];
            data_out_10 <= max_out[9];
            data_out_11 <= max_out[10];
            data_out_12 <= max_out[11];
            data_out_13 <= max_out[12];
            data_out_14 <= max_out[13];
            data_out_15 <= max_out[14];
            data_out_16 <= max_out[15];
            data_out_17 <= max_out[16];
            data_out_18 <= max_out[17];
            data_out_19 <= max_out[18];
            data_out_20 <= max_out[19];
            data_out_21 <= max_out[20];
            data_out_22 <= max_out[21];
            data_out_23 <= max_out[22];
            data_out_24 <= max_out[23];
            data_out_25 <= max_out[24];
            data_out_26 <= max_out[25];
            data_out_27 <= max_out[26];
            data_out_28 <= max_out[27];
            data_out_29 <= max_out[28];
            data_out_30 <= max_out[29];
            data_out_31 <= max_out[30];
            data_out_32 <= max_out[31];
            
        end
        cnt[0] <= valid_in;
        cnt[1] <= cnt[0];
        assign valid_out = cnt[1];
        
    end
endmodule