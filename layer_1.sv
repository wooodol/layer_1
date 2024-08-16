`timescale 1ns / 1ps

module layer_1(
    input clk,
    input rst_n,
    input reg[7:0] data_in,
    input valid_in,
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
    output reg valid_out_layer1
    );              
 /* register declaration */
  reg valid_out_padding;
 reg valid_out_conv1;
 reg valid_out_relu;
 reg valid_out_buf;
 
 
reg [31:0] data_out_padding;
 reg [31:0] relu_out [0:31];
reg [31:0] conv1_out [0:31];
reg [31:0] buf_out_1  [0:1][0:1];
reg [31:0] buf_out_2  [0:1][0:1];
reg [31:0] buf_out_3  [0:1][0:1];
reg [31:0] buf_out_4  [0:1][0:1];
reg [31:0] buf_out_5  [0:1][0:1];
reg [31:0] buf_out_6  [0:1][0:1];
reg [31:0] buf_out_7  [0:1][0:1];
reg [31:0] buf_out_8  [0:1][0:1];
reg [31:0] buf_out_9  [0:1][0:1];
reg [31:0] buf_out_10 [0:1][0:1];
reg [31:0] buf_out_11 [0:1][0:1];
reg [31:0] buf_out_12 [0:1][0:1];
reg [31:0] buf_out_13 [0:1][0:1];
reg [31:0] buf_out_14 [0:1][0:1];
reg [31:0] buf_out_15 [0:1][0:1];
reg [31:0] buf_out_16 [0:1][0:1];
reg [31:0] buf_out_17 [0:1][0:1];
reg [31:0] buf_out_18 [0:1][0:1];
reg [31:0] buf_out_19 [0:1][0:1];
reg [31:0] buf_out_20 [0:1][0:1];
reg [31:0] buf_out_21 [0:1][0:1];
reg [31:0] buf_out_22 [0:1][0:1];
reg [31:0] buf_out_23 [0:1][0:1];
reg [31:0] buf_out_24 [0:1][0:1];
reg [31:0] buf_out_25 [0:1][0:1];
reg [31:0] buf_out_26 [0:1][0:1];
reg [31:0] buf_out_27 [0:1][0:1];
reg [31:0] buf_out_28 [0:1][0:1];
reg [31:0] buf_out_29 [0:1][0:1];
reg [31:0] buf_out_30 [0:1][0:1];
reg [31:0] buf_out_31 [0:1][0:1];
reg [31:0] buf_out_32 [0:1][0:1];

reg valid_out_transformer;
reg [31:0] data_out_transformer [0:883];

/* transformer */ 
transformer transformer(
.clk(clk),
.valid_out(valid_out_transformer),
.valid_in(valid_in),
.data_in(data_in),
.data_out(data_out_transformer),
.rst_n(rst_n)
);

/* padding module */ 
clock_padding_first clock_padding_first(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_out_transformer),
.valid_out(valid_out_padding),
.data(data_out_transformer),
.output_data(data_out_padding)
);

 
 /* conv1_layer module */ 
 conv1_layer conv1_layer(
     .clk(clk),
     .rst_n(rst_n),
     .valid_in(valid_out_padding),
     .data_in(data_out_padding),
     .conv1_out(conv1_out),
     .valid_out(valid_out_conv1)
 );
 
 /* Relu function module */ 
 relu#(
 .IMAGE_WIDTH(26),
 .IMAGE_HEITH(34),
 .CHANNELS(32),
 .DATA_WIDTH(32))relu(
     .clk(clk),
     .rst_n(rst_n),
     .valid_in(valid_out_conv1),
     .data_in(conv1_out),
     .data_out(relu_out),
     .valid_out(valid_out_relu)
 );

 /* mid buffer module */  
 channel_buffer#(
.IMAGE_WIDTH(26),
.IMAGE_HEITH(34),    
.CHANNELS(32),    
.DATA_BITS(32))channel_buffer(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_out_relu),
.data_in(relu_out),
.data_out_1(buf_out_1),
.data_out_2(buf_out_2),
.data_out_3(buf_out_3),
.data_out_4(buf_out_4),
.data_out_5(buf_out_5),
.data_out_6(buf_out_6),
.data_out_7(buf_out_7),
.data_out_8(buf_out_8),
.data_out_9(buf_out_9),
.data_out_10(buf_out_10),
.data_out_11(buf_out_11),
.data_out_12(buf_out_12),
.data_out_13(buf_out_13),
.data_out_14(buf_out_14),
.data_out_15(buf_out_15),
.data_out_16(buf_out_16),
.data_out_17(buf_out_17),
.data_out_18(buf_out_18),
.data_out_19(buf_out_19),
.data_out_20(buf_out_20),
.data_out_21(buf_out_21),
.data_out_22(buf_out_22),
.data_out_23(buf_out_23),
.data_out_24(buf_out_24),
.data_out_25(buf_out_25),
.data_out_26(buf_out_26),
.data_out_27(buf_out_27),
.data_out_28(buf_out_28),
.data_out_29(buf_out_29),
.data_out_30(buf_out_30),
.data_out_31(buf_out_31),
.data_out_32(buf_out_32),
.valid_out(valid_out_buf)

);

/* max pooling module */ 
max_pooling_layer_top max_pooling_layer_top(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_out_buf),
.data_in_1(buf_out_1),
.data_in_2(buf_out_2),
.data_in_3(buf_out_3),
.data_in_4(buf_out_4),
.data_in_5(buf_out_5),
.data_in_6(buf_out_6),
.data_in_7(buf_out_7),
.data_in_8(buf_out_8),
.data_in_9(buf_out_9),
.data_in_10(buf_out_10),
.data_in_11(buf_out_11),
.data_in_12(buf_out_12),
.data_in_13(buf_out_13),
.data_in_14(buf_out_14),
.data_in_15(buf_out_15),
.data_in_16(buf_out_16),
.data_in_17(buf_out_17),
.data_in_18(buf_out_18),
.data_in_19(buf_out_19),
.data_in_20(buf_out_20),
.data_in_21(buf_out_21),
.data_in_22(buf_out_22),
.data_in_23(buf_out_23),
.data_in_24(buf_out_24),
.data_in_25(buf_out_25),
.data_in_26(buf_out_26),
.data_in_27(buf_out_27),
.data_in_28(buf_out_28),
.data_in_29(buf_out_29),
.data_in_30(buf_out_30),
.data_in_31(buf_out_31),
.data_in_32(buf_out_32),
.data_out_1(data_out_1),
.data_out_2(data_out_2),
.data_out_3(data_out_3),
.data_out_4(data_out_4),
.data_out_5(data_out_5),
.data_out_6(data_out_6),
.data_out_7(data_out_7),
.data_out_8(data_out_8),
.data_out_9(data_out_9),
.data_out_10(data_out_10),
.data_out_11(data_out_11),
.data_out_12(data_out_12),
.data_out_13(data_out_13),
.data_out_14(data_out_14),
.data_out_15(data_out_15),
.data_out_16(data_out_16),
.data_out_17(data_out_17),
.data_out_18(data_out_18),
.data_out_19(data_out_19),
.data_out_20(data_out_20),
.data_out_21(data_out_21),
.data_out_22(data_out_22),
.data_out_23(data_out_23),
.data_out_24(data_out_24),
.data_out_25(data_out_25),
.data_out_26(data_out_26),
.data_out_27(data_out_27),
.data_out_28(data_out_28),
.data_out_29(data_out_29),
.data_out_30(data_out_30),
.data_out_31(data_out_31),
.data_out_32(data_out_32),
.valid_out(valid_out_layer1)
);
          
endmodule
