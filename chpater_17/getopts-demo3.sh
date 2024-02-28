#!/bin/bash

while getopts :a:b: options; do
	case $options in
		a) var1=$OPTARG;;
		b) var2=$OPTARG;;
		\?) echo "I don't know the $OPTARG option";;
		:) echo "Both options require an argument.";;
	esac
done

[[ -z $var1 ]] || echo "Option A is $var1"
[[ -z $var2 ]] || echo "Option B is $var2"
