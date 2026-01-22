# Lab 3

This project involves the design and implementation of a 4-bit Adder/Subtractor Unit (ASU) using an Altera CPLD chip. The system is designed to multiplex addition and subtraction operations using a single control input and includes a custom combinational circuit to display digits from a specific Student ID.

OBJECTIVES

- Design a 4-bit Adder/Subtractor Unit (ASU).
- Implement the circuit using VHDL, including handling signed and unsigned logic.
- Design a combinational circuit (Unit C) to decode ASU outputs into Student ID digits.
- Display results on a 7-segment display.

SYSTEM ARCHITECTURE

Part A: Basic Adder/Subtractor This stage implements the ASU and a 7-segment decoder (sseg). The unit accepts two 4-bit inputs and a control signal (Cin) to perform addition or subtraction. The result is displayed on a 7-segment display, which includes logic to show a negative sign for signed numbers.

Part B: Student ID Generator. This stage integrates the ASU with a custom Combinational Unit (C). The ASU output connects to Unit C, which uses minimized logic expressions (derived from K-Maps) to output specific digits of the Student ID.
