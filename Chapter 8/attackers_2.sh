#!/bin/bash 
declare -a badips
badips=( $(cat /opt/scripts/banned.txt) )
echo "Here is the complete list: " 
echo ${badips[@]} 
echo 
echo "Let us now count the items in the list."
elements=${#badips[*]} 
echo "There are $elements IP addresses in the list." 
echo 
echo "badips[2] is ${badips[2]}, which is the third address in the list." 
exit
