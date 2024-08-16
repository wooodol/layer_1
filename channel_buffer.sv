`timescale 1ns / 1ps
module channel_buffer#(parameter
IMAGE_WIDTH = 26,
IMAGE_HEIGHT = 34,
CHANNELS = 32,
DATA_BITS = 32

)(
    input clk,
    input rst_n,
    input valid_in,
    input [31:0] data_in[0:CHANNELS-1],
  
    output reg [31:0] channel1 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel2 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel3 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel4 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel5 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel6 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel7 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel8 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel9 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel10 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel11 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel12 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel13 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel14 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel15 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel16 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel17 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel18 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel19 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel20 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel21 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel22 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel23 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel24 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel25 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel26 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel27 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel28 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel29 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel30 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel31 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel32 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],

output reg valid_out,
// 첫 번째 배열
output reg [31:0] data_out_1 [0:1][0:1],

// 두 번째 배열
output reg [31:0] data_out_2 [0:1][0:1],

// 세 번째 배열
output reg [31:0] data_out_3 [0:1][0:1],

// 추가 배열 (4번째 ~ 32번째 배열)
output reg [31:0] data_out_4 [0:1][0:1],

output reg [31:0] data_out_5 [0:1][0:1],

output reg [31:0] data_out_6 [0:1][0:1],

output reg [31:0] data_out_7 [0:1][0:1],

output reg [31:0] data_out_8 [0:1][0:1],

output reg [31:0] data_out_9 [0:1][0:1],

output reg [31:0] data_out_10 [0:1][0:1],

output reg [31:0] data_out_11 [0:1][0:1],

output reg [31:0] data_out_12 [0:1][0:1],

output reg [31:0] data_out_13 [0:1][0:1],

output reg [31:0] data_out_14 [0:1][0:1],

output reg [31:0] data_out_15 [0:1][0:1],

output reg [31:0] data_out_16 [0:1][0:1],

output reg [31:0] data_out_17 [0:1][0:1],

output reg [31:0] data_out_18 [0:1][0:1],

output reg [31:0] data_out_19 [0:1][0:1],

output reg [31:0] data_out_20 [0:1][0:1],

output reg [31:0] data_out_21 [0:1][0:1],

output reg [31:0] data_out_22 [0:1][0:1],

output reg [31:0] data_out_23 [0:1][0:1],

output reg [31:0] data_out_24 [0:1][0:1],

output reg [31:0] data_out_25 [0:1][0:1],

output reg [31:0] data_out_26 [0:1][0:1],

output reg [31:0] data_out_27 [0:1][0:1],

output reg [31:0] data_out_28 [0:1][0:1],

output reg [31:0] data_out_29 [0:1][0:1],

output reg [31:0] data_out_30 [0:1][0:1],

output reg [31:0] data_out_31 [0:1][0:1],

output reg [31:0] data_out_32 [0:1][0:1],

    
    // 첫 번째 신호 그룹
output reg [10:0] y,
output reg [10:0] m,

// 두 번째 그룹
output reg [10:0] y_2,
output reg [10:0] m_2,

// 세 번째 그룹
output reg [10:0] y_3,
output reg [10:0] m_3,

// 추가 신호 그룹 (4번째 ~ 32번째 그룹)
output reg [10:0] y_4,
output reg [10:0] m_4,

output reg [10:0] y_5,
output reg [10:0] m_5,

output reg [10:0] y_6,
output reg [10:0] m_6,

output reg [10:0] y_7,
output reg [10:0] m_7,

output reg [10:0] y_8,
output reg [10:0] m_8,

output reg [10:0] y_9,
output reg [10:0] m_9,

output reg [10:0] y_10,
output reg [10:0] m_10,

output reg [10:0] y_11,
output reg [10:0] m_11,

output reg [10:0] y_12,
output reg [10:0] m_12,

output reg [10:0] y_13,
output reg [10:0] m_13,

output reg [10:0] y_14,
output reg [10:0] m_14,

output reg [10:0] y_15,
output reg [10:0] m_15,

output reg [10:0] y_16,
output reg [10:0] m_16,

output reg [10:0] y_17,
output reg [10:0] m_17,

output reg [10:0] y_18,
output reg [10:0] m_18,

output reg [10:0] y_19,
output reg [10:0] m_19,

output reg [10:0] y_20,
output reg [10:0] m_20,

output reg [10:0] y_21,
output reg [10:0] m_21,

output reg [10:0] y_22,
output reg [10:0] m_22,

output reg [10:0] y_23,
output reg [10:0] m_23,

output reg [10:0] y_24,
output reg [10:0] m_24,

output reg [10:0] y_25,
output reg [10:0] m_25,

output reg [10:0] y_26,
output reg [10:0] m_26,

output reg [10:0] y_27,
output reg [10:0] m_27,

output reg [10:0] y_28,
output reg [10:0] m_28,

output reg [10:0] y_29,
output reg [10:0] m_29,

output reg [10:0] y_30,
output reg [10:0] m_30,

output reg [10:0] y_31,
output reg [10:0] m_31,

output reg [10:0] y_32,
output reg [10:0] m_32,
output reg state
   );


reg [10:0] i,j;
reg delay;


reg [10:0] k, t;

reg [10:0] k_2, t_2;
reg state_32;

reg [10:0] k_3, t_3;
reg state_2;

reg [10:0] k_4, t_4;
reg state_3;

reg [10:0] k_5, t_5;
reg state_4;

reg [10:0] k_6, t_6;
reg state_5;

reg [10:0] k_7, t_7;
reg state_6;

reg [10:0] k_8, t_8;
reg state_7;

reg [10:0] k_9, t_9;
reg state_8;

reg [10:0] k_10, t_10;
reg state_9;

reg [10:0] k_11, t_11;
reg state_10;

reg [10:0] k_12, t_12;
reg state_11;

reg [10:0] k_13, t_13;
reg state_12;

reg [10:0] k_14, t_14;
reg state_13;

reg [10:0] k_15, t_15;
reg state_14;

reg [10:0] k_16, t_16;
reg state_15;

reg [10:0] k_17, t_17;
reg state_16;

reg [10:0] k_18, t_18;
reg state_17;

reg [10:0] k_19, t_19;
reg state_18;

reg [10:0] k_20, t_20;
reg state_19;

reg [10:0] k_21, t_21;
reg state_20;

reg [10:0] k_22, t_22;
reg state_21;

reg [10:0] k_23, t_23;
reg state_22;

reg [10:0] k_24, t_24;
reg state_23;

reg [10:0] k_25, t_25;
reg state_24;

reg [10:0] k_26, t_26;
reg state_25;

reg [10:0] k_27, t_27;
reg state_26;

reg [10:0] k_28, t_28;
reg state_27;

reg [10:0] k_29, t_29;
reg state_28;

reg [10:0] k_30, t_30;
reg state_29;

reg [10:0] k_31, t_31;
reg state_30;

reg [10:0] k_32, t_32;
reg state_31;




always @(posedge clk or negedge rst_n) begin
    if(~rst_n)begin
        i <= 0;
        j <= 0;
        valid_out <= 0;
        
            // 첫 번째 신호 그룹
    k <= 0;
    t <= 0;
    m <= 0;
    state <= 0;
    y <= 0;
    
    // 두 번째 신호 그룹
    k_2 <= 0;
    t_2 <= 0;
    m_2 <= 0;
    state_2 <= 0;
    y_2 <= 0;
    
    // 세 번째 신호 그룹
    k_3 <= 0;
    t_3 <= 0;
    m_3 <= 0;
    state_3 <= 0;
    y_3 <= 0;
    
    // 추가 신호 그룹
    k_4 <= 0;
    t_4 <= 0;
    m_4 <= 0;
    state_4 <= 0;
    y_4 <= 0;
    
    k_5 <= 0;
    t_5 <= 0;
    m_5 <= 0;
    state_5 <= 0;
    y_5 <= 0;
    
    k_6 <= 0;
    t_6 <= 0;
    m_6 <= 0;
    state_6 <= 0;
    y_6 <= 0;
    
    k_7 <= 0;
    t_7 <= 0;
    m_7 <= 0;
    state_7 <= 0;
    y_7 <= 0;
    
    k_8 <= 0;
    t_8 <= 0;
    m_8 <= 0;
    state_8 <= 0;
    y_8 <= 0;
    
    k_9 <= 0;
    t_9 <= 0;
    m_9 <= 0;
    state_9 <= 0;
    y_9 <= 0;
    
    k_10 <= 0;
    t_10 <= 0;
    m_10 <= 0;
    state_10 <= 0;
    y_10 <= 0;
    
    k_11 <= 0;
    t_11 <= 0;
    m_11 <= 0;
    state_11 <= 0;
    y_11 <= 0;
    
    k_12 <= 0;
    t_12 <= 0;
    m_12 <= 0;
    state_12 <= 0;
    y_12 <= 0;
    
    k_13 <= 0;
    t_13 <= 0;
    m_13 <= 0;
    state_13 <= 0;
    y_13 <= 0;
    
    k_14 <= 0;
    t_14 <= 0;
    m_14 <= 0;
    state_14 <= 0;
    y_14 <= 0;
    
    k_15 <= 0;
    t_15 <= 0;
    m_15 <= 0;
    state_15 <= 0;
    y_15 <= 0;
    
    k_16 <= 0;
    t_16 <= 0;
    m_16 <= 0;
    state_16 <= 0;
    y_16 <= 0;
    
    k_17 <= 0;
    t_17 <= 0;
    m_17 <= 0;
    state_17 <= 0;
    y_17 <= 0;
    
    k_18 <= 0;
    t_18 <= 0;
    m_18 <= 0;
    state_18 <= 0;
    y_18 <= 0;
    
    k_19 <= 0;
    t_19 <= 0;
    m_19 <= 0;
    state_19 <= 0;
    y_19 <= 0;
    
    k_20 <= 0;
    t_20 <= 0;
    m_20 <= 0;
    state_20 <= 0;
    y_20 <= 0;
    
    k_21 <= 0;
    t_21 <= 0;
    m_21 <= 0;
    state_21 <= 0;
    y_21 <= 0;
    
    k_22 <= 0;
    t_22 <= 0;
    m_22 <= 0;
    state_22 <= 0;
    y_22 <= 0;
    
    k_23 <= 0;
    t_23 <= 0;
    m_23 <= 0;
    state_23 <= 0;
    y_23 <= 0;
    
    k_24 <= 0;
    t_24 <= 0;
    m_24 <= 0;
    state_24 <= 0;
    y_24 <= 0;
    
    k_25 <= 0;
    t_25 <= 0;
    m_25 <= 0;
    state_25 <= 0;
    y_25 <= 0;
    
    k_26 <= 0;
    t_26 <= 0;
    m_26 <= 0;
    state_26 <= 0;
    y_26 <= 0;
    
    k_27 <= 0;
    t_27 <= 0;
    m_27 <= 0;
    state_27 <= 0;
    y_27 <= 0;
    
    k_28 <= 0;
    t_28 <= 0;
    m_28 <= 0;
    state_28 <= 0;
    y_28 <= 0;
    
    k_29 <= 0;
    t_29 <= 0;
    m_29 <= 0;
    state_29 <= 0;
    y_29 <= 0;
    
    k_30 <= 0;
    t_30 <= 0;
    m_30 <= 0;
    state_30 <= 0;
    y_30 <= 0;
    
    k_31 <= 0;
    t_31 <= 0;
    m_31 <= 0;
    state_31 <= 0;
    y_31 <= 0;
    
    k_32 <= 0;
    t_32 <= 0;
    m_32 <= 0;
    state_32 <= 0;
    y_32 <= 0;

delay <= 0;
    end 
    else begin
// Channel 1
    if(state == 0) begin
        if(valid_in) begin
     
            channel1[i][j] <= data_in[0];
            channel2[i][j] <= data_in[1];
            channel3[i][j] <= data_in[2];
            channel4[i][j] <= data_in[3];
            channel5[i][j] <= data_in[4];
            channel6[i][j] <= data_in[5];
            channel7[i][j] <= data_in[6];
            channel8[i][j] <= data_in[7];
            channel9[i][j] <= data_in[8];
            channel10[i][j] <= data_in[9];
            channel11[i][j] <= data_in[10];
            channel12[i][j] <= data_in[11];
            channel13[i][j] <= data_in[12];
            channel14[i][j] <= data_in[13];
            channel15[i][j] <= data_in[14];
            channel16[i][j] <= data_in[15];
            channel17[i][j] <= data_in[16];
            channel18[i][j] <= data_in[17];
            channel19[i][j] <= data_in[18];
            channel20[i][j] <= data_in[19];
            channel21[i][j] <= data_in[20];
            channel22[i][j] <= data_in[21];
            channel23[i][j] <= data_in[22];
            channel24[i][j] <= data_in[23];
            channel25[i][j] <= data_in[24];
            channel26[i][j] <= data_in[25];
            channel27[i][j] <= data_in[26];
            channel28[i][j] <= data_in[27];
            channel29[i][j] <= data_in[28];
            channel30[i][j] <= data_in[29];
            channel31[i][j] <= data_in[30];
            channel32[i][j] <= data_in[31];
            j <= j + 1;  
               
            if(j == IMAGE_WIDTH-1) begin
                i <= i + 1;
                j <= 0;
                if (i == IMAGE_HEIGHT-1) begin
                    i <= 0;
                    j <= 0;
                    state <= 1;
                end
            end   
        end
    end    
 if(delay) begin
     valid_out <= 0;
 end
    
    // 1번째 채널
if(state == 1) begin
    data_out_1[0][0] <= channel1[k][t];
    data_out_1[0][1] <= channel1[k][t+1];
    data_out_1[1][0] <= channel1[k+1][t];
    data_out_1[1][1] <= channel1[k+1][t+1];
    t <= t + 2;
    m <= m + 1;
    valid_out <= 1;
    if(t == IMAGE_WIDTH-2) begin
        k <= k + 2;
        t <= 0;
        if(k == IMAGE_HEIGHT-2) begin
            k <= 0;
            t <= 0;
            m <= 0;
            state <= 0; 
            y <= 1;
            delay <= 1;
         
        end
    end
    
end

// 2번째 채널
if(state == 1) begin
    data_out_2[0][0] <= channel2[k_2][t_2];
    data_out_2[0][1] <= channel2[k_2][t_2+1];
    data_out_2[1][0] <= channel2[k_2+1][t_2];
    data_out_2[1][1] <= channel2[k_2+1][t_2+1];
    t_2 <= t_2 + 2;
    m_2 <= m_2 + 1;
    if(t_2 == IMAGE_WIDTH-2) begin
        k_2 <= k_2 + 2;
        t_2 <= 0;
        if(k_2 == IMAGE_HEIGHT-2) begin
            k_2 <= 0;
            t_2 <= 0;
            m_2 <= 0;
            state_2 <= 0; 
            y_2 <= 1;         
        end
    end
end

// 3번째 채널
if(state == 1) begin
    data_out_3[0][0] <= channel3[k_3][t_3];
    data_out_3[0][1] <= channel3[k_3][t_3+1];
    data_out_3[1][0] <= channel3[k_3+1][t_3];
    data_out_3[1][1] <= channel3[k_3+1][t_3+1];
    t_3 <= t_3 + 2;
    m_3 <= m_3 + 1;
    if(t_3 == IMAGE_WIDTH-2) begin
        k_3 <= k_3 + 2;
        t_3 <= 0;
        if(k_3 == IMAGE_HEIGHT-2) begin
            k_3 <= 0;
            t_3 <= 0;
            m_3 <= 0;
            state_3 <= 0; 
            y_3 <= 1;         
        end
    end
end

// 4번째 채널
if(state == 1) begin
    data_out_4[0][0] <= channel4[k_4][t_4];
    data_out_4[0][1] <= channel4[k_4][t_4+1];
    data_out_4[1][0] <= channel4[k_4+1][t_4];
    data_out_4[1][1] <= channel4[k_4+1][t_4+1];
    t_4 <= t_4 + 2;
    m_4 <= m_4 + 1;
    if(t_4 == IMAGE_WIDTH-2) begin
        k_4 <= k_4 + 2;
        t_4 <= 0;
        if(k_4 == IMAGE_HEIGHT-2) begin
            k_4 <= 0;
            t_4 <= 0;
            m_4 <= 0;
            state_4 <= 0; 
            y_4 <= 1;         
        end
    end
end

// 5번째 채널
if(state == 1) begin
    data_out_5[0][0] <= channel5[k_5][t_5];
    data_out_5[0][1] <= channel5[k_5][t_5+1];
    data_out_5[1][0] <= channel5[k_5+1][t_5];
    data_out_5[1][1] <= channel5[k_5+1][t_5+1];
    t_5 <= t_5 + 2;
    m_5 <= m_5 + 1;
    if(t_5 == IMAGE_WIDTH-2) begin
        k_5 <= k_5 + 2;
        t_5 <= 0;
        if(k_5 == IMAGE_HEIGHT-2) begin
            k_5 <= 0;
            t_5 <= 0;
            m_5 <= 0;
            state_5 <= 0; 
            y_5 <= 1;         
        end
    end
end

// 6번째 채널
if(state == 1) begin
    data_out_6[0][0] <= channel6[k_6][t_6];
    data_out_6[0][1] <= channel6[k_6][t_6+1];
    data_out_6[1][0] <= channel6[k_6+1][t_6];
    data_out_6[1][1] <= channel6[k_6+1][t_6+1];
    t_6 <= t_6 + 2;
    m_6 <= m_6 + 1;
    if(t_6 == IMAGE_WIDTH-2) begin
        k_6 <= k_6 + 2;
        t_6 <= 0;
        if(k_6 == IMAGE_HEIGHT-2) begin
            k_6 <= 0;
            t_6 <= 0;
            m_6 <= 0;
            state_6 <= 0; 
            y_6 <= 1;         
        end
    end
end

// 7번째 채널
if(state == 1) begin
    data_out_7[0][0] <= channel7[k_7][t_7];
    data_out_7[0][1] <= channel7[k_7][t_7+1];
    data_out_7[1][0] <= channel7[k_7+1][t_7];
    data_out_7[1][1] <= channel7[k_7+1][t_7+1];
    t_7 <= t_7 + 2;
    m_7 <= m_7 + 1;
    if(t_7 == IMAGE_WIDTH-2) begin
        k_7 <= k_7 + 2;
        t_7 <= 0;
        if(k_7 == IMAGE_HEIGHT-2) begin
            k_7 <= 0;
            t_7 <= 0;
            m_7 <= 0;
            state_7 <= 0; 
            y_7 <= 1;         
        end
    end
end

// 8번째 채널
if(state == 1) begin
    data_out_8[0][0] <= channel8[k_8][t_8];
    data_out_8[0][1] <= channel8[k_8][t_8+1];
    data_out_8[1][0] <= channel8[k_8+1][t_8];
    data_out_8[1][1] <= channel8[k_8+1][t_8+1];
    t_8 <= t_8 + 2;
    m_8 <= m_8 + 1;
    if(t_8 == IMAGE_WIDTH-2) begin
        k_8 <= k_8 + 2;
        t_8 <= 0;
        if(k_8 == IMAGE_HEIGHT-2) begin
            k_8 <= 0;
            t_8 <= 0;
            m_8 <= 0;
            state_8 <= 0; 
            y_8 <= 1;         
        end
    end
end

// 9번째 채널
if(state == 1) begin
    data_out_9[0][0] <= channel9[k_9][t_9];
    data_out_9[0][1] <= channel9[k_9][t_9+1];
    data_out_9[1][0] <= channel9[k_9+1][t_9];
    data_out_9[1][1] <= channel9[k_9+1][t_9+1];
    t_9 <= t_9 + 2;
    m_9 <= m_9 + 1;
    if(t_9 == IMAGE_WIDTH-2) begin
        k_9 <= k_9 + 2;
        t_9 <= 0;
        if(k_9 == IMAGE_HEIGHT-2) begin
            k_9 <= 0;
            t_9 <= 0;
            m_9 <= 0;
            state_9 <= 0; 
            y_9 <= 1;         
        end
    end
end

// 10번째 채널
if(state == 1) begin
    data_out_10[0][0] <= channel10[k_10][t_10];
    data_out_10[0][1] <= channel10[k_10][t_10+1];
    data_out_10[1][0] <= channel10[k_10+1][t_10];
    data_out_10[1][1] <= channel10[k_10+1][t_10+1];
    t_10 <= t_10 + 2;
    m_10 <= m_10 + 1;
    if(t_10 == IMAGE_WIDTH-2) begin
        k_10 <= k_10 + 2;
        t_10 <= 0;
        if(k_10 == IMAGE_HEIGHT-2) begin
            k_10 <= 0;
            t_10 <= 0;
            m_10 <= 0;
            state_10 <= 0; 
            y_10 <= 1;         
        end
    end
end

// 11번째 채널
if(state == 1) begin
    data_out_11[0][0] <= channel11[k_11][t_11];
    data_out_11[0][1] <= channel11[k_11][t_11+1];
    data_out_11[1][0] <= channel11[k_11+1][t_11];
    data_out_11[1][1] <= channel11[k_11+1][t_11+1];
    t_11 <= t_11 + 2;
    m_11 <= m_11 + 1;
    if(t_11 == IMAGE_WIDTH-2) begin
        k_11 <= k_11 + 2;
        t_11 <= 0;
        if(k_11 == IMAGE_HEIGHT-2) begin
            k_11 <= 0;
            t_11 <= 0;
            m_11 <= 0;
            state_11 <= 0; 
            y_11 <= 1;         
        end
    end
end

// 12번째 채널
if(state == 1) begin
    data_out_12[0][0] <= channel12[k_12][t_12];
    data_out_12[0][1] <= channel12[k_12][t_12+1];
    data_out_12[1][0] <= channel12[k_12+1][t_12];
    data_out_12[1][1] <= channel12[k_12+1][t_12+1];
    t_12 <= t_12 + 2;
    m_12 <= m_12 + 1;
    if(t_12 == IMAGE_WIDTH-2) begin
        k_12 <= k_12 + 2;
        t_12 <= 0;
        if(k_12 == IMAGE_HEIGHT-2) begin
            k_12 <= 0;
            t_12 <= 0;
            m_12 <= 0;
            state_12 <= 0; 
            y_12 <= 1;         
        end
    end
end

// 13번째 채널
if(state == 1) begin
    data_out_13[0][0] <= channel13[k_13][t_13];
    data_out_13[0][1] <= channel13[k_13][t_13+1];
    data_out_13[1][0] <= channel13[k_13+1][t_13];
    data_out_13[1][1] <= channel13[k_13+1][t_13+1];
    t_13 <= t_13 + 2;
    m_13 <= m_13 + 1;
    if(t_13 == IMAGE_WIDTH-2) begin
        k_13 <= k_13 + 2;
        t_13 <= 0;
        if(k_13 == IMAGE_HEIGHT-2) begin
            k_13 <= 0;
            t_13 <= 0;
            m_13 <= 0;
            state_13 <= 0; 
            y_13 <= 1;         
        end
    end
end

// 14번째 채널
if(state == 1) begin
    data_out_14[0][0] <= channel14[k_14][t_14];
    data_out_14[0][1] <= channel14[k_14][t_14+1];
    data_out_14[1][0] <= channel14[k_14+1][t_14];
    data_out_14[1][1] <= channel14[k_14+1][t_14+1];
    t_14 <= t_14 + 2;
    m_14 <= m_14 + 1;
    if(t_14 == IMAGE_WIDTH-2) begin
        k_14 <= k_14 + 2;
        t_14 <= 0;
        if(k_14 == IMAGE_HEIGHT-2) begin
            k_14 <= 0;
            t_14 <= 0;
            m_14 <= 0;
            state_14 <= 0; 
            y_14 <= 1;         
        end
    end
end

// 15번째 채널
if(state == 1) begin
    data_out_15[0][0] <= channel15[k_15][t_15];
    data_out_15[0][1] <= channel15[k_15][t_15+1];
    data_out_15[1][0] <= channel15[k_15+1][t_15];
    data_out_15[1][1] <= channel15[k_15+1][t_15+1];
    t_15 <= t_15 + 2;
    m_15 <= m_15 + 1;
    if(t_15 == IMAGE_WIDTH-2) begin
        k_15 <= k_15 + 2;
        t_15 <= 0;
        if(k_15 == IMAGE_HEIGHT-2) begin
            k_15 <= 0;
            t_15 <= 0;
            m_15 <= 0;
            state_15 <= 0; 
            y_15 <= 1;         
        end
    end
end

// 16번째 채널
if(state == 1) begin
    data_out_16[0][0] <= channel16[k_16][t_16];
    data_out_16[0][1] <= channel16[k_16][t_16+1];
    data_out_16[1][0] <= channel16[k_16+1][t_16];
    data_out_16[1][1] <= channel16[k_16+1][t_16+1];
    t_16 <= t_16 + 2;
    m_16 <= m_16 + 1;
    if(t_16 == IMAGE_WIDTH-2) begin
        k_16 <= k_16 + 2;
        t_16 <= 0;
        if(k_16 == IMAGE_HEIGHT-2) begin
            k_16 <= 0;
            t_16 <= 0;
            m_16 <= 0;
            state_16 <= 0; 
            y_16 <= 1;         
        end
    end
end

// 17번째 채널
if(state == 1) begin
    data_out_17[0][0] <= channel17[k_17][t_17];
    data_out_17[0][1] <= channel17[k_17][t_17+1];
    data_out_17[1][0] <= channel17[k_17+1][t_17];
    data_out_17[1][1] <= channel17[k_17+1][t_17+1];
    t_17 <= t_17 + 2;
    m_17 <= m_17 + 1;
    if(t_17 == IMAGE_WIDTH-2) begin
        k_17 <= k_17 + 2;
        t_17 <= 0;
        if(k_17 == IMAGE_HEIGHT-2) begin
            k_17 <= 0;
            t_17 <= 0;
            m_17 <= 0;
            state_17 <= 0; 
            y_17 <= 1;         
        end
    end
end

// 18번째 채널
if(state == 1) begin
    data_out_18[0][0] <= channel18[k_18][t_18];
    data_out_18[0][1] <= channel18[k_18][t_18+1];
    data_out_18[1][0] <= channel18[k_18+1][t_18];
    data_out_18[1][1] <= channel18[k_18+1][t_18+1];
    t_18 <= t_18 + 2;
    m_18 <= m_18 + 1;
    if(t_18 == IMAGE_WIDTH-2) begin
        k_18 <= k_18 + 2;
        t_18 <= 0;
        if(k_18 == IMAGE_HEIGHT-2) begin
            k_18 <= 0;
            t_18 <= 0;
            m_18 <= 0;
            state_18 <= 0; 
            y_18 <= 1;         
        end
    end
end

// 19번째 채널
if(state == 1) begin
    data_out_19[0][0] <= channel19[k_19][t_19];
    data_out_19[0][1] <= channel19[k_19][t_19+1];
    data_out_19[1][0] <= channel19[k_19+1][t_19];
    data_out_19[1][1] <= channel19[k_19+1][t_19+1];
    t_19 <= t_19 + 2;
    m_19 <= m_19 + 1;
    if(t_19 == IMAGE_WIDTH-2) begin
        k_19 <= k_19 + 2;
        t_19 <= 0;
        if(k_19 == IMAGE_HEIGHT-2) begin
            k_19 <= 0;
            t_19 <= 0;
            m_19 <= 0;
            state_19 <= 0; 
            y_19 <= 1;         
        end
    end
end

// 20번째 채널
if(state == 1) begin
    data_out_20[0][0] <= channel20[k_20][t_20];
    data_out_20[0][1] <= channel20[k_20][t_20+1];
    data_out_20[1][0] <= channel20[k_20+1][t_20];
    data_out_20[1][1] <= channel20[k_20+1][t_20+1];
    t_20 <= t_20 + 2;
    m_20 <= m_20 + 1;
    if(t_20 == IMAGE_WIDTH-2) begin
        k_20 <= k_20 + 2;
        t_20 <= 0;
        if(k_20 == IMAGE_HEIGHT-2) begin
            k_20 <= 0;
            t_20 <= 0;
            m_20 <= 0;
            state_20 <= 0; 
            y_20 <= 1;         
        end
    end
end

// 21번째 채널
if(state == 1) begin
    data_out_21[0][0] <= channel21[k_21][t_21];
    data_out_21[0][1] <= channel21[k_21][t_21+1];
    data_out_21[1][0] <= channel21[k_21+1][t_21];
    data_out_21[1][1] <= channel21[k_21+1][t_21+1];
    t_21 <= t_21 + 2;
    m_21 <= m_21 + 1;
    if(t_21 == IMAGE_WIDTH-2) begin
        k_21 <= k_21 + 2;
        t_21 <= 0;
        if(k_21 == IMAGE_HEIGHT-2) begin
            k_21 <= 0;
            t_21 <= 0;
            m_21 <= 0;
            state_21 <= 0; 
            y_21 <= 1;         
        end
    end
end

// 22번째 채널
if(state == 1) begin
    data_out_22[0][0] <= channel22[k_22][t_22];
    data_out_22[0][1] <= channel22[k_22][t_22+1];
    data_out_22[1][0] <= channel22[k_22+1][t_22];
    data_out_22[1][1] <= channel22[k_22+1][t_22+1];
    t_22 <= t_22 + 2;
    m_22 <= m_22 + 1;
    if(t_22 == IMAGE_WIDTH-2) begin
        k_22 <= k_22 + 2;
        t_22 <= 0;
        if(k_22 == IMAGE_HEIGHT-2) begin
            k_22 <= 0;
            t_22 <= 0;
            m_22 <= 0;
            state_22 <= 0; 
            y_22 <= 1;         
        end
    end
end

// 23번째 채널
if(state == 1) begin
    data_out_23[0][0] <= channel23[k_23][t_23];
    data_out_23[0][1] <= channel23[k_23][t_23+1];
    data_out_23[1][0] <= channel23[k_23+1][t_23];
    data_out_23[1][1] <= channel23[k_23+1][t_23+1];
    t_23 <= t_23 + 2;
    m_23 <= m_23 + 1;
    if(t_23 == IMAGE_WIDTH-2) begin
        k_23 <= k_23 + 2;
        t_23 <= 0;
        if(k_23 == IMAGE_HEIGHT-2) begin
            k_23 <= 0;
            t_23 <= 0;
            m_23 <= 0;
            state_23 <= 0; 
            y_23 <= 1;         
        end
    end
end

// 24번째 채널
if(state == 1) begin
    data_out_24[0][0] <= channel24[k_24][t_24];
    data_out_24[0][1] <= channel24[k_24][t_24+1];
    data_out_24[1][0] <= channel24[k_24+1][t_24];
    data_out_24[1][1] <= channel24[k_24+1][t_24+1];
    t_24 <= t_24 + 2;
    m_24 <= m_24 + 1;
    if(t_24 == IMAGE_WIDTH-2) begin
        k_24 <= k_24 + 2;
        t_24 <= 0;
        if(k_24 == IMAGE_HEIGHT-2) begin
            k_24 <= 0;
            t_24 <= 0;
            m_24 <= 0;
            state_24 <= 0; 
            y_24 <= 1;         
        end
    end
end

// 25번째 채널
if(state == 1) begin
    data_out_25[0][0] <= channel25[k_25][t_25];
    data_out_25[0][1] <= channel25[k_25][t_25+1];
    data_out_25[1][0] <= channel25[k_25+1][t_25];
    data_out_25[1][1] <= channel25[k_25+1][t_25+1];
    t_25 <= t_25 + 2;
    m_25 <= m_25 + 1;
    if(t_25 == IMAGE_WIDTH-2) begin
        k_25 <= k_25 + 2;
        t_25 <= 0;
        if(k_25 == IMAGE_HEIGHT-2) begin
            k_25 <= 0;
            t_25 <= 0;
            m_25 <= 0;
            state_25 <= 0; 
            y_25 <= 1;         
        end
    end
end

// 26번째 채널
if(state == 1) begin
    data_out_26[0][0] <= channel26[k_26][t_26];
    data_out_26[0][1] <= channel26[k_26][t_26+1];
    data_out_26[1][0] <= channel26[k_26+1][t_26];
    data_out_26[1][1] <= channel26[k_26+1][t_26+1];
    t_26 <= t_26 + 2;
    m_26 <= m_26 + 1;
    if(t_26 == IMAGE_WIDTH-2) begin
        k_26 <= k_26 + 2;
        t_26 <= 0;
        if(k_26 == IMAGE_HEIGHT-2) begin
            k_26 <= 0;
            t_26 <= 0;
            m_26 <= 0;
            state_26 <= 0; 
            y_26 <= 1;         
        end
    end
end

// 27번째 채널
if(state == 1) begin
    data_out_27[0][0] <= channel27[k_27][t_27];
    data_out_27[0][1] <= channel27[k_27][t_27+1];
    data_out_27[1][0] <= channel27[k_27+1][t_27];
    data_out_27[1][1] <= channel27[k_27+1][t_27+1];
    t_27 <= t_27 + 2;
    m_27 <= m_27 + 1;
    if(t_27 == IMAGE_WIDTH-2) begin
        k_27 <= k_27 + 2;
        t_27 <= 0;
        if(k_27 == IMAGE_HEIGHT-2) begin
            k_27 <= 0;
            t_27 <= 0;
            m_27 <= 0;
            state_27 <= 0; 
            y_27 <= 1;         
        end
    end
end

// 28번째 채널
if(state == 1) begin
    data_out_28[0][0] <= channel28[k_28][t_28];
    data_out_28[0][1] <= channel28[k_28][t_28+1];
    data_out_28[1][0] <= channel28[k_28+1][t_28];
    data_out_28[1][1] <= channel28[k_28+1][t_28+1];
    t_28 <= t_28 + 2;
    m_28 <= m_28 + 1;
    if(t_28 == IMAGE_WIDTH-2) begin
        k_28 <= k_28 + 2;
        t_28 <= 0;
        if(k_28 == IMAGE_HEIGHT-2) begin
            k_28 <= 0;
            t_28 <= 0;
            m_28 <= 0;
            state_28 <= 0; 
            y_28 <= 1;         
        end
    end
end

// 29번째 채널
if(state == 1) begin
    data_out_29[0][0] <= channel29[k_29][t_29];
    data_out_29[0][1] <= channel29[k_29][t_29+1];
    data_out_29[1][0] <= channel29[k_29+1][t_29];
    data_out_29[1][1] <= channel29[k_29+1][t_29+1];
    t_29 <= t_29 + 2;
    m_29 <= m_29 + 1;
    if(t_29 == IMAGE_WIDTH-2) begin
        k_29 <= k_29 + 2;
        t_29 <= 0;
        if(k_29 == IMAGE_HEIGHT-2) begin
            k_29 <= 0;
            t_29 <= 0;
            m_29 <= 0;
            state_29 <= 0; 
            y_29 <= 1;         
        end
    end
end

// 30번째 채널
if(state == 1) begin
    data_out_30[0][0] <= channel30[k_30][t_30];
    data_out_30[0][1] <= channel30[k_30][t_30+1];
    data_out_30[1][0] <= channel30[k_30+1][t_30];
    data_out_30[1][1] <= channel30[k_30+1][t_30+1];
    t_30 <= t_30 + 2;
    m_30 <= m_30 + 1;
    if(t_30 == IMAGE_WIDTH-2) begin
        k_30 <= k_30 + 2;
        t_30 <= 0;
        if(k_30 == IMAGE_HEIGHT-2) begin
            k_30 <= 0;
            t_30 <= 0;
            m_30 <= 0;
            state_30 <= 0; 
            y_30 <= 1;         
        end
    end
end

// 31번째 채널
if(state == 1) begin
    data_out_31[0][0] <= channel31[k_31][t_31];
    data_out_31[0][1] <= channel31[k_31][t_31+1];
    data_out_31[1][0] <= channel31[k_31+1][t_31];
    data_out_31[1][1] <= channel31[k_31+1][t_31+1];
    t_31 <= t_31 + 2;
    m_31 <= m_31 + 1;
    if(t_31 == IMAGE_WIDTH-2) begin
        k_31 <= k_31 + 2;
        t_31 <= 0;
        if(k_31 == IMAGE_HEIGHT-2) begin
            k_31 <= 0;
            t_31 <= 0;
            m_31 <= 0;
            state_31 <= 0; 
            y_31 <= 1;         
        end
    end
end

// 32번째 채널
if(state == 1) begin
    data_out_32[0][0] <= channel32[k_32][t_32];
    data_out_32[0][1] <= channel32[k_32][t_32+1];
    data_out_32[1][0] <= channel32[k_32+1][t_32];
    data_out_32[1][1] <= channel32[k_32+1][t_32+1];
    t_32 <= t_32 + 2;
    m_32 <= m_32 + 1;
    if(t_32 == IMAGE_WIDTH-2) begin
        k_32 <= k_32 + 2;
        t_32 <= 0;
        if(k_32 == IMAGE_HEIGHT-2) begin
            k_32 <= 0;
            t_32 <= 0;
            m_32 <= 0;
            state_32 <= 0; 
            y_32 <= 1;         
        end
    end
end 
end  
end

endmodule        
    
