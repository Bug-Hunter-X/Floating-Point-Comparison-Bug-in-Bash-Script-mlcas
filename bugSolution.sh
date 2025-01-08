#!/bin/bash

# Corrected script using awk for accurate floating-point comparison

input_file="numbers.txt"

largest_number=$(awk '{if ($1 > max) max = $1} END {print max}' "$input_file")

echo "Largest number: $largest_number"