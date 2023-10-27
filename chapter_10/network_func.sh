#!/bin/bash

network() {
if [[ $# -eq 0 ]]; then
        site="google.com"
else
        site="$1"
fi
ping -c 2 $site > /dev/null
if [[ $? != 0 ]]; then
        echo $(date +%F) . . . Network Failure for "$site"!
        logger "Could not reach $site."
else
        echo $(date +%F) . . . Success for "$site"!
        logger "$site is reachable."
fi
}

network
network www.civicsandpolitics.com
network donnie.com
