#!/bin/sh 
start=0 
limit=10
while [ "$start" -le "$limit" ]; do 
  echo "$start... " 
  start=$["$start"+1]
done 
