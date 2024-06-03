#!/bin/bash
for cars in Pontiac Oldsmobile Buick Chevrolet Ford Mercury
do
	if [[ $cars == Buick || $cars == Mercury ]]; then
		continue
	fi
	echo $cars
done
