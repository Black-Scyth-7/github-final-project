#!/bin/bash

echo "💰 Simple Interest Calculator"

# Take user input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (per year): " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
# Using bc for decimal calculation
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo ""
echo "----- Result -----"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
