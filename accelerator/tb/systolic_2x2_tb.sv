
`timescale 1ns/1ps

module systolic_2x2_tb;

    reg clk = 0;
    reg rst_n = 0;
    reg enable = 0;

    reg signed [7:0] a00, a01, a10, a11;
    reg signed [7:0] b00, b01, b10, b11;

    wire signed [31:0] c00, c01, c10, c11;

    systolic_2x2 dut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .a00(a00), .a01(a01),
        .a10(a10), .a11(a11),
        .b00(b00), .b01(b01),
        .b10(b10), .b11(b11),
        .c00(c00), .c01(c01),
        .c10(c10), .c11(c11)
    );

    always #5 clk = ~clk;

    initial begin
        a00 = 1; a01 = 2;
        a10 = 3; a11 = 4;

        b00 = 5; b01 = 6;
        b10 = 7; b11 = 8;

        #12;
        rst_n = 1;
        enable = 1;

        @(posedge clk);
        #1;

        $display("C00 = %0d (expected 19)", c00);
        $display("C01 = %0d (expected 22)", c01);
        $display("C10 = %0d (expected 43)", c10);
        $display("C11 = %0d (expected 50)", c11);

        if (c00 == 19 && c01 == 22 &&
            c10 == 43 && c11 == 50)
            $display("ALL TESTS PASSED");
        else
            $display("TEST FAILED");

        $finish;
    end

endmodule
