#!/bin/bash

# This script attempts to find the largest number in a file.
# However, it contains a subtle bug related to floating-point numbers.

input_file="numbers.txt"

largest_number=0

while IFS= read -r number; do
  if (( $(echo "$number > $largest_number" | bc -l) )); then
    largest_number=$number
  fi
 done < "$input_file"

echo "Largest number: $largest_number"