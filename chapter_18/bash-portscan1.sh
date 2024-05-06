#!/bin/bash
#populate the variables from the positional parameter arguments
host=$1
startport=$2
stopport=$3

#ping the target device to see if it is up
ping=$(ping -c 1 $host | grep bytes | wc -l)

if [ "$ping" -gt 1 ]; then
  echo "$host is up";
else
  echo "$host is down. Quitting";
  exit
fi

#scan a port to see if it is open
for ((counter=$startport; counter<=$stopport; counter++)); do
	  (echo >/dev/tcp/$host/$counter) > /dev/null 2>&1 && echo "Port $counter open"
done



