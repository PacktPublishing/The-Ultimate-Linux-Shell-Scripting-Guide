#!/bin/bash
ttl_temp=$(ping -c1 $1 | head -2 | tail -1 | cut -d= -f3)
ttl=$(echo $ttl_temp | cut -d" " -f1)
echo "The TTL value is $ttl."
if [[ $ttl == 64 ]]; then
	 echo "A TTL of $ttl indicates either a Linux, BSD, or macOS operating system."
elif [[ $ttl == 128 ]]; then
       	echo "A TTL of $ttl indicates a Windows operating system."
elif [[ $ttl == 255 ]] ; then
       	echo "A TTL of $ttl indicates a Solaris/OpenIndiana operating system."
else
	echo "There was no recognized TTL value."
fi
