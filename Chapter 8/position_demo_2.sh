#!/bin/bash
# position_demo

if [[ $# -ne 3 ]]; then
	echo "This script requires three arguments."
	exit 1
fi
echo "I have a cat, whose name is $1."
echo "I have another cat, whose name is $2."
echo "I have yet another cat, whose name is $3."
echo
echo
echo "The script that I just ran is $0"
