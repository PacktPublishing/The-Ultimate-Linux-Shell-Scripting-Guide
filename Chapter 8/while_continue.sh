#!/bin/bash
j=0
while [[ $j -lt 6 ]]
do
	j=$((j + 1))
	[[ $j -eq 3 || $j -eq 6 ]] && continue
	echo "$j"
done
