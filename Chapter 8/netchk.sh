#!/bin/bash
if [[ $# -eq 0 ]]; then
	site="google.com"
else
	site="$1"
fi

ping -c 2 $site > /dev/null
if [[ $? != 0 ]]; then
	echo $(date +%F) . . . Network Failure!
	logger "Could not reach $site."
else
	echo $(date +%F) . . . Success!
	logger "$site is reachable."
fi
