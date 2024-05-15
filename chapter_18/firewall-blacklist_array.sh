#!/bin/bash

declare -a badips
badips=( $(cat ip-address_blacklist.txt) )
for ip in ${badips[*]}
do
	firewall-cmd --permanent --add-rich-rule="rule family="ipv4" source address="$ip" drop"
done
firewall-cmd --reload


