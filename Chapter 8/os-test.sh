#!/bin/bash
os=$(uname)
if [[ $os == Linux ]]; then
	echo "This machine is running Linux."
elif [[ $os == Darwin ]]; then
	echo "This machine is running macOS."
elif [[ $os == FreeBSD ]]; then
	echo "This machine is running FreeBSD."
else
	echo "I don't know this $os operating system."
fi
