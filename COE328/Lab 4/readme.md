# Lab 4

OBJECTIVES

- Construct combinational circuits (Multiplexers, Decoders, Encoders) using VHDL.
- Design and implement circuits with basic storage elements (Latches/Flip-Flops), specifically a Johnson Counter.

SYSTEM ARCHITECTURE

Part A: Combinational Logic Design This phase focuses on modular VHDL design, where smaller components are reused to build larger circuits.

- Multiplexer: A 4:1 Multiplexer (muxModified) is implemented by cascading two 2:1 Multiplexer components (mux).
- Decoder: A 3:8 Decoder (decodModified) is constructed using two 2:4 Decoder components (decod).
- Error Handling: The design must handle invalid states by displaying an "E" on the 7-segment display.

Part B: Sequential Logic (Johnson Counter) This phase implements a sequential circuit that cycles through a specific data sequence.

- Johnson Counter: A 3-bit Johnson Counter is implemented in VHDL (johns) using a state register (Qreg) that feeds back to the inputs.
- Student ID Sequencer: The counter's output drives a CASE statement that cyclically displays the last 6 digits of the Student ID.
- User Configuration: For Student ID, the system will output the sequence the last six digits on the 7-segment display.
