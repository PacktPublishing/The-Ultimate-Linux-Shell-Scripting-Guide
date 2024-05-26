#!/bin/bash

val1=$1
val2=$2

echo "val1 + val2 = " ; expr $val1 + $val2
echo
echo "val1 - val2 = " ; expr $val1 - $val2
echo
echo "val1 / val2 = " ; expr $val1 / $val2
echo
echo "val1 * val2 = " ; expr $val1 \* $val2
echo
echo "val1 % val2 = " ; expr $val1 % $val2
