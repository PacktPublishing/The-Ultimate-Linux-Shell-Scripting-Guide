#!/usr/bin/awk -f

NR==1; NR>1{printf("%.2f %s\n",($2=="F" ? (($1-32)*5) / 9 : $1), "Celsius")}
