#!/bin/bash
x=100000000
while [[ $x -gt 0 ]]; do
	x=$(expr $x - 1)
	echo $x
done
