# Lab 6

OBJECTIVES

- Design and Construct: Build a complete Arithmetic and Logic Unit (ALU) within a VHDL environment.
- Implement on Hardware: Deploy the synthesized ALU design onto an FPGA board.
- System Integration: Combine multiple sub-components (Control Unit, Registers, ALU Core) into a functional processing unit.

SYSTEM ARCHITECTURE

The system is modelled as a General Purpose Unit (GPU) comprising four distinct sub-components

Part A: Storage Units (Registers)

- Function: Two 8-bit registers (latches) act as temporary storage for input values A and B.
- Operation: The registers capture input data on the rising edge of the clock signal and pass it to the ALU Core 2.
- Input Data: Inputs A and B are derived from the last four digits of the Student ID.

Part B: Control Unit. 

This unit governs the sequence of operations performed by the ALU.

- Finite State Machine (FSM): Cycles through 9 states (0-8) using a clock signal. It outputs a 4-bit current_state signal
- Decoder: A 4-to-16 decoder (constructed from two 3-to-8 decoders) translates the current_state into a 16-bit operation-selector signal (OP)

Part C: ALU Core 

- Function: The computational heart of the system. It receives the two 8-bit operands (A and B) and the 16-bit OP selector.
- Operations: It executes one of 9 distinct arithmetic or logical operations (e.g., Sum, Diff, NAND, XOR) based on the active bit in the OP signal.
- Output: Generates an 8-bit Result and a negative sign indicator (Neg).

Part D: Display Unit
- Visualization: The final output is split into two 4-bit nibbles and displayed on two 7-segment displays (Hex 0 and Hex 1) using the decoders from previous labs.
- Status Indicators: Additional displays show the current state of the FSM and the Student ID digits.
