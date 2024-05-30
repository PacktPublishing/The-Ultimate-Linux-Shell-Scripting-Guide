#!/bin/sh

set $(cat iplist.txt)

echo "$1 is the first item in the list."
echo "$3 is the third item in the list."
echo "********************************"
echo "The most dangerous intruder is $2, which is the second item of the list."
echo "*******************************"
echo "Here is the entire list of IP addresses in the array:"
echo "$@"
