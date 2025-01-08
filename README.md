# Bash Floating-Point Comparison Bug

This repository demonstrates a subtle bug in a Bash script that incorrectly handles floating-point number comparisons when attempting to find the largest number in a file.  The script uses `bc` for floating-point arithmetic, but there's an issue with how the comparison is performed.

## Bug Description
The `bug.sh` script reads numbers from `numbers.txt`, attempting to identify the largest.  However, due to the way floating-point numbers are compared, it might not always identify the correct largest number, especially if the input contains floating-point numbers with high precision.

## Solution
The `bugSolution.sh` script provides a corrected approach by using `awk` for accurate floating-point comparisons.