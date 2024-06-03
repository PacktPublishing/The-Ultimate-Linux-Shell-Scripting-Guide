#!/bin/bash
file=/etc/passwd
while read -r line; do
	echo $line
done < "$file"
