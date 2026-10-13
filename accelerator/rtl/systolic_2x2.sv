
`timescale 1ns/1ps

// 2x2 INT8 Matrix Multiplication Accelerator
// Verified with EDA Playground testbench

module systolic_2x2 (
    input wire clk,
    input wire rst_n,
    input wire enable,

    input wire signed [7:0] a00, a01,
    input wire signed [7:0] a10, a11,
    input wire signed [7:0] b00, b01,
    input wire signed [7:0] b10, b11,

    output reg signed [31:0] c00, c01,
    output reg signed [31:0] c10, c11
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            c00 <= 32'sd0;
            c01 <= 32'sd0;
            c10 <= 32'sd0;
            c11 <= 32'sd0;
        end
        else if (enable) begin
            c00 <= a00 * b00 + a01 * b10;
            c01 <= a00 * b01 + a01 * b11;
            c10 <= a10 * b00 + a11 * b10;
            c11 <= a10 * b01 + a11 * b11;
        end
    end

endmodule
