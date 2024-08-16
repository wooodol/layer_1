`timescale 1ns / 1ps

module transformer(
    input [7:0] data_in,
    input reg valid_in,
    input clk,
    output reg [31:0] data_out [0:883],
    output reg valid_out,
    input rst_n
);
wire valid_out_normal;
wire [15:0] data_out_normal;
wire valid_out_ftof;
wire [31:0] data_out_ftof;

normalize normalize(
.clk(clk),
.valid_out(valid_out_normal),
.valid_in(valid_in),
.data_in(data_in),
.data_out(data_out_normal),
.rst_n(rst_n)
);

ftof ftof(
.data_in(data_out_normal),
.data_out(data_out_ftof),
.clk(clk),
.rst_n(rst_n),
.valid_out(valid_out_ftof),
.valid_in(valid_out_normal)
);

trans_buf trans_buf(
.data_in(data_out_ftof),
.data_out(data_out),
.clk(clk),
.rst_n(rst_n),
.valid_out(valid_out),
.valid_in(valid_out_ftof)
);

endmodule
