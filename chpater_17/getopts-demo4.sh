#!/bin/bash
while getopts :a:b:c options; do
	case $options in
		a) var1=$OPTARG;;
		b) var2=$OPTARG;;
		c) echo "This option doesn't require an argument.";;
		\?) echo "I don't know the $OPTARG option";;
		:) echo "Both options require an argument.";;
	esac
done

[[ -z $var1 ]] || echo "Option A is $var1"
[[ -z $var2 ]] || echo "Option B is $var2"
shift $((OPTIND-1))
[[ -z $1 ]] || ls -l "$1"
