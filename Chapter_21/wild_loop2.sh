#!/bin/bash
# while loop NOT running wild
count=25
limit=30
while [ "$limit" -gt "$count" ];
do
	echo $count
	(( count = (count + 1)))
done
