#!/bin/bash 
badips=$(cat /opt/scripts/banned.txt) 
declare -a attackers 
attackers=( $badips ) 
echo "Here is the complete list: " 
echo ${attackers[@]} 
echo 
echo "Let us now count the items in the list."
num_attackers=${#attackers[*]} 
echo "There are $elements IP addresses in the list." 
echo 
echo "attackers[2] is ${attackers[2]}, which is the third address in the list." 
exit
