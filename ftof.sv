`timescale 1ns / 1ps

module ftof(
    input signed [15:0] data_in,
    output reg [31:0] data_out,
    input reg valid_in,
    input clk,
    input rst_n,
    output reg valid_out
);
    reg sign;
    reg [7:0] exponent;
    reg [22:0] mantissa;
    reg [15:0] abs_data;
    integer shift;

    always @(*) begin
        valid_out = valid_in;
    end
    
    always @(*) begin
        sign = data_in[15];
        abs_data = sign ? -data_in : data_in;

        if (abs_data == 0) begin
            exponent = 0;
            mantissa = 0;
        end else begin
            shift = 0;
            while (abs_data[15] == 0 && shift < 15) begin
                abs_data = abs_data << 1;
                shift = shift + 1;
            end

            exponent = 8'd127 - shift;

            mantissa = abs_data[14:0] << 8;
        end

        data_out = {sign, exponent, mantissa};
    end
endmodule
