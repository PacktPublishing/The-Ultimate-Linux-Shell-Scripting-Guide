#!/bin/bash
x=10
while [[ $x -gt 0 ]]; do
	x=$(expr $x - 1)
	echo $x
done
