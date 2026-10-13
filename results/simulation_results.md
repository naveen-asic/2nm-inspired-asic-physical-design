
# ALU Simulation Results

## Project
8-bit ALU using Verilog HDL.

## Simulator
Icarus Verilog 12.0 through EDA Playground.

## Tested Operations

| Operation | Inputs | Expected Result | Observed Result |
|---|---|---:|---:|
| ADD | 10, 5 | 15 | 15 |
| SUB | 10, 10 | 0 | 0 |
| AND | F0, 0F | 00 | 00 |
| OR | F0, 0F | FF | FF |
| XOR | AA, FF | 55 | 55 |
| Left Shift | 3, 2 | 12 | 12 |
| Right Shift | 64, 2 | 16 | 16 |
| Less Than | 3, 5 | 1 | 1 |

## Simulation Link
https://www.edaplayground.com/x/954p

## Notes
These results are from RTL simulation only. No actual 2nm fabrication, foundry PDK implementation, or physical-design sign-off is claimed.
