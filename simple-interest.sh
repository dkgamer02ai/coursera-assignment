#!/usr/bin/env bash
# simple-interest.sh
# Compute simple interest and total amount interactively

set -euo pipefail

read -rp "Principal (P): " P
read -rp "Annual interest rate in percent (r): " r
read -rp "Time in years (t): " t

# Use bc for floating-point arithmetic
SI=$(printf "%s\n" "scale=2; ($P * $r * $t) / 100" | bc -l)
AMOUNT=$(printf "%s\n" "scale=2; $P + $SI" | bc -l)

echo "Simple Interest: $SI"
echo "Total Amount:    $AMOUNT"
