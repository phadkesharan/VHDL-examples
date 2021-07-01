@echo off

Rem automate syntax check and analysis of the 4x1 multiplexer

cmd /k "ghdl -s mux_2x1.vhdl & ghdl -s mux_4x1.vhdl & ghdl -s mux_4x1_tb.vhdl & ghdl -a mux_2x1.vhdl & ghdl -a mux_4x1.vhdl & ghdl -a mux_4x1_tb.vhdl"
