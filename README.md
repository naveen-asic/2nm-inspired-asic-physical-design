# 2nm-inspired-asic-physical-design
Beginner-friendly ALU RTL design and ASIC physical design learning portfolio using open-source EDA tools.

## ALU Verilog Simulation

An 8-bit ALU designed using Verilog HDL.

### Operations
- Addition and subtraction
- Bitwise AND, OR, XOR
- Left shift and right shift
- Less-than comparison

### Simulation
[Run the ALU on EDA Playground] (https://www.edaplayground.com/x/954p)

### Tools
- Verilog HDL
- Icarus Verilog
- EDA Playground

**Note:** This is a beginner-level RTL learning project, not an actual 2nm fabrication or sign-off implementation.

## ALU Block Diagram

![8-bit ALU Block Diagram](8%20bit%20alu.png)





---

## 2x2 INT8 Matrix Multiplication Accelerator

A SystemVerilog RTL project that implements 2x2 signed INT8 matrix multiplication and verifies the computed outputs using an EDA Playground testbench.

### Input Matrices

Matrix A:
```text
1  2
3  4
```

Matrix B:
```text
5  6
7  8
```

### Simulation Results

| Output | Expected Value | Status |
|---|---:|---|
| C00 | 19 | PASS |
| C01 | 22 | PASS |
| C10 | 43 | PASS |
| C11 | 50 | PASS |

**Verification:** All four output checks passed in the EDA Playground simulation.

### Project Files

- RTL: [`accelerator/rtl/systolic_2x2.sv`](accelerator/rtl/systolic_2x2.sv)
- Testbench: [`accelerator/tb/systolic_2x2_tb.sv`](accelerator/tb/systolic_2x2_tb.sv)
- Simulation results: [`accelerator/results/simulation_results.md`](accelerator/results/simulation_results.md)

### Simulation Link

[Run the design on EDA Playground](https://www.edaplayground.com/x/pWpd)

### Tools Used

- SystemVerilog
- Icarus Verilog 12.0
- EDA Playground

**Current scope:** This version computes 2x2 matrix multiplication. Inter-PE systolic data propagation, synthesis, physical design, and power/timing analysis are future enhancements, not completed results.


