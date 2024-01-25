#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 project_name"
  exit 1
fi

PROJECT_NAME=$1
PROJECT_FOLDER="./done/$PROJECT_NAME"

# Create the project folder if it doesn't exist
if [ ! -d "$PROJECT_FOLDER" ]; then
  mkdir -p "$PROJECT_FOLDER"
fi

# Create the Makefile
cat <<EOL > "$PROJECT_FOLDER/Makefile"
# Makefile for VHDL simulation in $PROJECT_FOLDER

# Define the target and testbench
TARGET = $PROJECT_NAME
TEST = test_$PROJECT_NAME

# Define compilation options
GHDL_FLAGS = --ieee=synopsys -fexplicit

# Define simulation options
SIM_FLAGS = --wave=\$(TEST).ghw

# Define cleanup files
CLEAN_FILES = *.o *.cf *.ghw *.vcd *.dat *.txt *.vcd

# Default target
all: compilation elaborate run

# Compile VHDL files
compilation:
	ghdl -a \$(GHDL_FLAGS) \$(TARGET).vhd \$(LIB) \$(TEST).vhd 

# Elaborate the testbench
elaborate:
	ghdl -e \$(GHDL_FLAGS) \$(TEST) 

# Run the simulation
run:
	ghdl -r \$(GHDL_FLAGS) \$(TEST) \$(SIM_FLAGS)

# Clean up generated files
clean:
	rm -f \$(CLEAN_FILES)

# open the waveform viewer
gtk:
	gtkwave \$(TEST).ghw

EOL

echo "Makefile and shell script generated for $PROJECT_NAME in $PROJECT_FOLDER."
