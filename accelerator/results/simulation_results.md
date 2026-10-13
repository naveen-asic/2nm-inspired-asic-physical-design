
# 2x2 INT8 Matrix Multiplication Accelerator

## Project Overview
A small RTL design that computes 2x2 signed 8-bit matrix multiplication using SystemVerilog. The design was simulated on EDA Playground using Icarus Verilog 12.0.

## Simulation Environment
- HDL: SystemVerilog
- Simulator: Icarus Verilog 12.0
- Platform: EDA Playground
- Verification: Self-checking testbench

## Test Inputs

Matrix A:

    [1  2]
    [3  4]

Matrix B:

    [5  6]
    [7  8]

## Expected and Observed Results

| Output | Expected | Observed |
|---|---:|---:|
| C00 | 19 | 19 |
| C01 | 22 | 22 |
| C10 | 43 | 43 |
| C11 | 50 | 50 |

## Test Status
**ALL TESTS PASSED**

The testbench compared all four outputs against their expected values.

## Design Notes
- Signed 8-bit input operands
- 32-bit output registers
- Synchronous computation with clock enable
- Active-low asynchronous reset

## Limitations
This version implements the 2x2 matrix multiplication equations. Inter-PE systolic data propagation, synthesis, timing analysis, power estimation, and physical design have not yet been implemented or verified.

## EDA Playground
https://www.edaplayground.com/x/pWpd
