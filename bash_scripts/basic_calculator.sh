# Challenge 1: Basic Arithmetic Calculator

# Create a script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division).

# Requirements:

# Prompt user for two numbers

# Perform all four operations

# Display the results

# Handle division by zero

# Example output:

# Enter first number: 10 Enter second number: 5

# Results: 10 + 5 = 15 10 - 5 = 5 10 × 5 = 50 10 ÷ 5 = 2

#!/usr/bin/env bash

set -eux


calculator() {
    read -p "Please enter an operation (+, -, /, *): " operation
    echo "Selected operation is $operation"
    read -p "Please enter two numbers: " num_1 num_2
    echo "Numbers selected: $num_1, $num_2" 

    if [ $operation == "+" ]; then
        result=$(( num_1 + num_2 ))

    elif [ $operation == "-" ]; then
        result=$(( num_1 - num_2 ))

    elif [ $operation == "/" ]; then
        if [ $num_2 == 0 ]; then
            echo "Cannot divide by 0!"
            return 1
        else
            result=$(( num_1 / num_2 ))
        fi
        result=$(( num_1 / num_2 ))

    elif [ $operation == "*" ]; then
        result=$(( num_1 * num_2 ))

    fi

    echo "output is $result"

}

calculator