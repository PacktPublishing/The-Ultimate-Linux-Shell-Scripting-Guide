#!/bin/sh
x=10
while [[ $x -gt 0 ]]; do
	((x--))
	echo $x
done
