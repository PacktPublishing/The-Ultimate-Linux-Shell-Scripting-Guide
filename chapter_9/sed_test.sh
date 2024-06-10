#!/bin/bash

if [[ $(uname) == "Darwin" || $(uname) == "FreeBSD" ]]; then
	gsed='/usr/local/bin/gsed'

elif [[ $(uname) == "Linux" ]]; then
	gsed='/usr/bin/sed'
elif [[ $(uname) == "SunOS" ]]; then
	gsed='/usr/bin/gsed'
else
	echo "I don't know that OS."
fi


$gsed '/[Ee]dsel/i1958' cars_2.txt

