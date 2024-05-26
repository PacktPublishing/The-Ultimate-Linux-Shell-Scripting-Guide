#!/bin/bash

if [ -z $1 ]; then
	echo "Usage:"
	echo "./pi_bc.sh scale_value"
else
	pi=$(echo "scale=$1; 4*a(1)" | bc -l)
	echo $pi
fi
