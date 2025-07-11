#  4-Bit ALU in Verilog

A 4-bit Arithmetic Logic Unit (ALU) implemented in Verilog, capable of performing a variety of arithmetic and logical operations. This project includes the ALU design, a testbench, and waveform visualization using GTKWave.

---

##  Features

- 4-bit input operands: `A`, `B`
- 4-bit operation selector: `op`
- 4-bit result output: `result`
- Zero flag output: `ZF` (Set if result is zero)
- Simulated using **Icarus Verilog**
- Waveform visualization with **GTKWave**

---

##  Operations Supported

| Opcode | Operation | Description        |
|--------|-----------|--------------------|
| `0000` | ADD       | A + B              |
| `0001` | SUB       | A - B              |
| `0010` | AND       | A & B              |
| `0011` | OR        | A \| B             |
| `0100` | XOR       | A ^ B              |
| `0101` | NOT       | ~A                 |
| `0110` | INC       | A + 1              |
| `0111` | DEC       | A - 1              |
| `1000` | SHL       | A << 1             |
| `1001` | SHR       | A >> 1             |
| `1010` | CMP       | Sets ZF = 1 if A == B, else 0 |

---

##  How to Simulate (Command Line)

> Make sure you have [Icarus Verilog](https://steveicarus.github.io/iverilog/) and [GTKWave](https://gtkwave.sourceforge.net/) installed.

1. **Compile the design and testbench**
   ```bash
   iverilog -o alu_test alu_4bit.v tb_alu_4bit.v
