#!/bin/bash


calculate_simple_interest() {
    # Formula: Simple Interest = (P * R * T) / 100
    local principal=$1
    local rate=$2
    local time=$3

    # Calculate the simple interest
    local simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

    echo "Simple Interest: $simple_interest"
}

read -p "Enter the Principal Amount: " principal
read -p "Enter the Rate of Interest (in %): " rate
read -p "Enter the Time (in years): " time


if [[ $principal =~ ^[0-9]+([.][0-9]+)?$ && $rate =~ ^[0-9]+([.][0-9]+)?$ && $time =~ ^[0-9]+([.][0-9]+)?$ ]]
then
    # Call the function to calculate simple interest
    calculate_simple_interest "$principal" "$rate" "$time"
else
    echo "Invalid input. Please enter valid numbers for Principal, Rate, and Time."
fi
