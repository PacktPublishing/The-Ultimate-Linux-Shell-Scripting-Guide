#!/bin/bash

while getopts ab options; do
	case $options in
		a) echo "You chose Option A";;
		b) echo "You chose Option B";;
	esac
done
