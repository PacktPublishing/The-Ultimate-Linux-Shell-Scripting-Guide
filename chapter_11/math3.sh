#!/bin/bash

val1=$1
val2=$2
val3=$3

echo "Without grouping: " $[val1+val2*val3]
echo "With grouping: "  $[(val1+val2)*val3]
