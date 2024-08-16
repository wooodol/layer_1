`timescale 1ns / 1ps

module tb_layer_1();
reg clk;
reg rst_n;
reg [7:0] data_in;
reg valid_in;
reg valid_out_layer1;
reg [31:0] data_out_1;
reg [31:0] data_out_2;
reg [31:0] data_out_3;
reg [31:0] data_out_4;
reg [31:0] data_out_5;
reg [31:0] data_out_6;
reg [31:0] data_out_7;
reg [31:0] data_out_8;
reg [31:0] data_out_9;
reg [31:0] data_out_10;
reg [31:0] data_out_11;
reg [31:0] data_out_12;
reg [31:0] data_out_13;
reg [31:0] data_out_14;
reg [31:0] data_out_15;
reg [31:0] data_out_16;
reg [31:0] data_out_17;
reg [31:0] data_out_18;
reg [31:0] data_out_19;
reg [31:0] data_out_20;
reg [31:0] data_out_21;
reg [31:0] data_out_22;
reg [31:0] data_out_23;
reg [31:0] data_out_24;
reg [31:0] data_out_25;
reg [31:0] data_out_26;
reg [31:0] data_out_27;
reg [31:0] data_out_28;
reg [31:0] data_out_29;
reg [31:0] data_out_30;
reg [31:0] data_out_31;
reg [31:0] data_out_32;

layer_1 layer_1(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_in),
.data_in(data_in),
.valid_out_layer1(valid_out_layer1),
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
.data_out_32(data_out_32)
);

integer delay, i,k;

initial begin
    clk = 0;
    i = 0;
    delay = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k = 1;
end

always @(posedge clk) begin
    if(k) begin
        data_in <= $urandom;
        i <= i+1;
        valid_in <= 1;
        end
    
        if(i == 883) begin
            delay <= 1;
            k <= 0;
            i <= 0;
        end
        if(delay)begin
        valid_in <= 0;
        delay <= 0;
        end
        end
       
        

endmodule
