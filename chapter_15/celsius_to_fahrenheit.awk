#!/usr/bin/awk -f

NR==1 ; NR>1 {print ($2=="C" ? (($1+32)*9) / 5 : $1)" Fahrenheit"}
