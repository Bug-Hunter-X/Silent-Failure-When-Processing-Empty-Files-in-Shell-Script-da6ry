#!/bin/bash

# Improved script that handles empty input files gracefully

input_file="input.txt"

# Check if the file exists
if [ -f "$input_file" ]; then
  # Check if the file is empty
  if [ -s "$input_file" ]; then
    # Get the first line of the file
    first_line=$(head -n 1 "$input_file")
    
    # Process the first line
    echo "The first line is: $first_line"
    #Further processing
    # Example: processed_line=${first_line//a/A}
    # echo "Processed line is: $processed_line"
  else
    echo "Input file '$input_file' is empty."
  fi
else
  echo "Error: Input file '$input_file' does not exist."
exit 1
fi