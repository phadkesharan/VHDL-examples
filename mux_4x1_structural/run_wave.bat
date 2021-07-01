@echo off

Rem run ghdl file mux_4x1_tb and gtkwave from command line

cd /k "ghdl -r mux_4x1_tb --vcd=dump.vcd & gtkwave dump.vcd" 