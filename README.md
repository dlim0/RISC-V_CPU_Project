# 🛠️ Hardware & RTL Acronym Cheat Sheet

This repository reference maps standard digital design acronyms, plain-English definitions, and practical interview phrasing.

---

### 1. Core Digital Design Terms

| Acronym | Full Term | Plain-English Meaning | Interview Explanation |
| :--- | :--- | :--- | :--- |
| **RTL** | Register-Transfer Level | Writing SystemVerilog code describing data flowing between flip-flops through combinational logic. | *"The module's synthesizable hardware logic."* |
| **ALU** | Arithmetic Logic Unit | The central execution engine/mux that computes operations (`ADD`, `SUB`, `AND`, `OR`). | *"The block executing arithmetic and logical operations based on opcode."* |
| **DUT** | Device Under Test | The top-level SystemVerilog module currently being tested in a simulation. | *"The target hardware module being verified in the testbench."* |
| **FSM** | Finite State Machine | Sequential control logic driven by state registers and next-state transition decoders. | *"The state control logic that sequences hardware operations across clock cycles."* |
| **CDC** | Clock Domain Crossing | Safely passing a signal from one clock domain to another (e.g., via a 2-flop synchronizer). | *"Synchronizing asynchronous signals across different clock frequencies."* |

---

### 2. RISC-V & Processor Architecture

| Acronym | Full Term | Plain-English Meaning | Interview Explanation |
| :--- | :--- | :--- | :--- |
| **RV32I** | RISC-V 32-bit Integer | The foundational 32-bit integer base instruction set architecture. | *"The base 32-bit RISC-V integer instruction set."* |
| **Datapath** | Datapath | The physical collection of registers, ALUs, and multiplexers that process data. | *"The execution path where data signals flow and undergo hardware operations."* |
| **Control Unit** | Control Logic | Decoding logic that reads instruction opcodes to toggle control signals and multiplexers. | *"The logic decoding instructions to drive control signals across the datapath."* |
| **ISA** | Instruction Set Architecture | The contract defining how machine code maps to underlying CPU execution logic. | *"The specification bridging machine code and microarchitecture hardware."* |

---

### 3. Verification & EDA Tooling

| Acronym | Full Term | Plain-English Meaning | Interview Explanation |
| :--- | :--- | :--- | :--- |
| **TB** | Testbench | Verification code built
