# Lab 5 

OBJECTIVES

- Simulate and verify the operation of a sequential circuit.
Design a Finite State Machine (FSM) that cycles through the individual digits of a Student ID using a specific assigned state diagram
- Differentiate between Mealy and Moore machines and implement the assigned type in VHDL.

SYSTEM ARCHITECTURE

Part A: Finite State Machine (FSM) Design. This phase involves designing the core sequential logic that drives the system.

- State Structure: The system is defined by an enumerated type with 9 states (s0 to s8), corresponding to the 9 digits of the Student ID.
- Machine Type: The implementation will be either a Mealy or Moore machine, determined by the specific assignment from the lab instructor (selected from FSM #1 through FSM #12)
- Logic Implementation: The design uses a VHDL process with a CASE statement to determine state transitions based on the clock signal and input data_in.

Part B: Student ID Sequencer. This phase integrates the FSM with output logic to display personal data.

- ID Mapping: The FSM cycles through the student's specific 9-digit identifier. 
- Display Logic: The system utilizes two 7-segment displays: one to show the current state (s0 to s8) and one to show the corresponding Student ID digit.
- Component Reuse: The 7-segment decoder module (sseg) developed in Lab 3 is reused here to drive the displays
- Error Handling: The circuit must detect invalid states and display an "E" on the 7-segment display
