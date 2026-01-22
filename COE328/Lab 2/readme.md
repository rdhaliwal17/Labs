# Lab 2

OBJECTIVES

- Implement simple logic functions using NAND gates.
- Design, build, and test logic functions using the Karnaugh map method.

SYSTEM ARCHITECTURE

Part A: NAND Logic Implementation. This phase establishes the universal nature of NAND gates. The system architecture involves:

- Component Construction: Designing fundamental logic blocks (Inverter, 3-input NAND, 2-input OR) using exclusively 2-input NAND gates .
- Function Synthesis: Implementing the specific function Z = (A+B)(AB)' using both mixed logic (OR/AND/NAND) and a pure NAND gate architecture (requiring 4 gates).

Part B: Custom Logic Design

This phase involves designing a unique combinational circuit based on personal data.

- Input Generation: The logic function is constructed by combining the last 4 digits of the Student ID with a fixed set of minterms (F1–F18) assigned by the instructor.
- Logic Optimization: The resulting composite function is minimized using Karnaugh maps (K-maps) to reduce gate count before simulation.
