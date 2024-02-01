#!/usr/bin/awk -f

NR==1 ; NR>1{print ($2=="F" ? (($1-32)*5) / 9 : $1)"\t\t Celsius"}
