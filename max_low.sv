`timescale 1ns / 1ps

module max_pooling(
    input wire clk,
    input wire rst_n,
    input wire [31:0] data_in0,
    input wire [31:0] data_in1,
    input wire [31:0] data_in2,
    input wire [31:0] data_in3,
    output reg [31:0] data_out
);

    wire [31:0] max_0_1;
    wire [31:0] max_2_3;
    wire gt_0_1;
    wire gt_2_3;

    // 부동소수점 비교 모듈 인스턴스
    float_compare comp0 (
        .a(data_in0),
        .b(data_in1),
        .a_gt_b(gt_0_1)
    );

    float_compare comp1 (
        .a(data_in2),
        .b(data_in3),
        .a_gt_b(gt_2_3)
    );

    // 두 비교 중 큰 값을 선택
    assign max_0_1 = gt_0_1 ? data_in0 : data_in1;
    assign max_2_3 = gt_2_3 ? data_in2 : data_in3;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            data_out <= 32'b0;
        else
            data_out <= (max_0_1 > max_2_3) ? max_0_1 : max_2_3;
    end
endmodule

//////// 부동소수점 비교 모듈

module float_compare(
    input wire [31:0] a,
    input wire [31:0] b,
    output wire a_gt_b
);
    // 음수를 0으로 처리
    wire [31:0] pos_a = a[31] ? 32'b0 : a;
    wire [31:0] pos_b = b[31] ? 32'b0 : b;

    // 지수 및 가수 분리
    wire [7:0] exp_a = pos_a[30:23];
    wire [7:0] exp_b = pos_b[30:23];
    wire [22:0] mant_a = pos_a[22:0];
    wire [22:0] mant_b = pos_b[22:0];

    // 비교 연산
    assign a_gt_b = (exp_a == exp_b) ? (mant_a > mant_b) : (exp_a > exp_b);
endmodule