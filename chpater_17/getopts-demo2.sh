#!/bin/bash

while getopts a:b: options; do
	case $options in
		a) var1=$OPTARG;;
		b) var2=$OPTARG;;
	esac
done

echo "Option A is $var1 and Option B is $var2"
