#!/bin/bash 

# while loop running wild
count=30
limit=25
while [ "$count" -gt "$limit" ];
do
	echo $count
	(( count = (count + 1)))
done
