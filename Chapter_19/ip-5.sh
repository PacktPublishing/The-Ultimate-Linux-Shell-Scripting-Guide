#!/bin/sh

set 192.168.3.78 192.168.3.4 192.168.3.9
printf '%s\n' "$1 is the first item in the list."
printf '%s\n' "$3 is the third item in the list." 
printf '%s\n' "**********************************"
printf '%b\n' "The most dangerous intruder is \v$2,\v which is the second item of the list."
printf '%s\n' "*********************************"
printf '%s\n' "Here is the entire list of IP addresses in the array:"
printf '%s\n' "$@"
