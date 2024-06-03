#!/bin/bash
j=0
while [[ $j -lt 5 ]]
do
	echo "This is number: $j"
	j=$((j + 1))
	if [[ "$j" == '2' ]]; then
		echo "We have reached our goal: $j"
		break
	fi
done
echo "That's all, folks!"
