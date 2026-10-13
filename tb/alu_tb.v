
`timescale 1ns/1ps

module alu_tb;
    reg [7:0] a, b;
    reg [2:0] opcode;
    wire [7:0] result;
    wire zero;
    integer errors = 0;

    alu dut (
        .a(a), .b(b), .opcode(opcode),
        .result(result), .zero(zero)
    );

    task check;
        input [7:0] expected;
        input expected_zero;
        begin
            #1;
            if (result !== expected || zero !== expected_zero) begin
                $display("FAIL: opcode=%b result=%h expected=%h",
                         opcode, result, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: opcode=%b result=%h", opcode, result);
            end
        end
    endtask

    initial begin
        a=10; b=5; opcode=3'b000; check(15, 0);
        a=10; b=10; opcode=3'b001; check(0, 1);
        a=8'hF0; b=8'h0F; opcode=3'b010; check(0, 1);
        a=8'hF0; b=8'h0F; opcode=3'b011; check(8'hFF, 0);
        a=8'hAA; b=8'hFF; opcode=3'b100; check(8'h55, 0);
        a=3; b=2; opcode=3'b101; check(12, 0);
        a=64; b=2; opcode=3'b110; check(16, 0);
        a=8'hFF; b=1; opcode=3'b111; check(1, 0);
        a=1; b=2; opcode=3'b111; check(1, 0);
        a=5; b=2; opcode=3'b111; check(0, 1);

        if (errors == 0) begin
            $display("PASS: all ALU test cases passed.");
            $finish;
        end else begin
            $fatal(1, "FAIL: %0d test(s) failed", errors);
        end
    end
endmodule
