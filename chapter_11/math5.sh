#!/bin/bash

declare -i val1=$1
declare -i val2=$2
declare -i result1=val1+val2
declare -i result2=val1/val2
declare -i result3=val1*val2
declare -i result4=val1-val2
declare -i result5=val1%val2

echo "Addition: $result1"
echo "Division: $result2"
echo "Multiplication: $result3"
echo "Subtraction: $result4"
echo "Modulus: $result5"
