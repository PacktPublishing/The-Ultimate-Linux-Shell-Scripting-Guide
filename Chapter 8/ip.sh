#!/bin/bash
echo "IP Addresses of intruder attempts"
declare -a ip
ip=( 192.168.3.78 192.168.3.4 192.168.3.9 )
echo "ip[0] is ${ip[0]}, the first item in the list."
echo "ip[2] is ${ip[2]}, the third item in the list."
echo "***********************************"
echo "The most dangerous intruder is ${ip[1]}, which is in ip[1]."
echo "***********************************"
echo "Here is the entire list of IP addresses in the array."
echo ${ip[*]}


