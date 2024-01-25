# Makefile for VHDL simulation in ./done/pulse_gen

# Define the target and testbench
TARGET = pulse_gen
TEST = test_pulse_gen

# Define compilation options
GHDL_FLAGS = --ieee=synopsys -fexplicit

# Define simulation options
SIM_FLAGS = --wave=$(TEST).ghw

# Define cleanup files
CLEAN_FILES = *.o *.cf *.ghw *.vcd *.dat *.txt *.vcd

# Default target
all: compilation elaborate run

# Compile VHDL files
compilation:
	ghdl -a $(GHDL_FLAGS) $(TARGET).vhd $(LIB) $(TEST).vhd 

# Elaborate the testbench
elaborate:
	ghdl -e $(GHDL_FLAGS) $(TEST) 

# Run the simulation
run:
	ghdl -r $(GHDL_FLAGS) $(TEST) $(SIM_FLAGS)

# Clean up generated files
clean:
	rm -f $(CLEAN_FILES)

# open the waveform viewer
gtk:
	gtkwave $(TEST).ghw

