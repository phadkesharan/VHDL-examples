# VHDL-examples
Contains VHDL codes for implimenting basic digital circuits

## Instructions for running 

### VHDL Simulator required for compiling and executing 

recommended : ghdl - vhdl simulator for windows

download from : http://ghdl.free.fr/download.html

### GtkWave wave viewer required for analysing waveform

download from : http://gtkwave.sourceforge.net/

#### GHDL commands :

file/entity name - device.vhdl

Syntax check:

    ghdl -s device.vhdl

Analysis :

    ghdl -a device.vhdl

Elaborate:

    ghdl -e device

Run:

    ghdl -r device

Create waveform:

    ghdl -r device --vcd=wave_file_name.vcd

Run waveform Analysis:

    gtkwave wave_file_name.vcd
 
