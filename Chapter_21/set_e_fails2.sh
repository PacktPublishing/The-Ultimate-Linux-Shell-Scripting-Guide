#!/bin/bash
i=0
echo "Exit code after setting the value of i: " $?
let i++
echo "Exit code after incrementing i: " $?
echo "i is $i"
echo "Exit code after displaying new value of i: " $?
