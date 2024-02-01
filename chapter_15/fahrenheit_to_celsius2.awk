#!/usr/bin/awk -f

NR==1; NR>1{printf("%-11s %s\n",($2=="F" ? (($1-32)*5) / 9 : $1), "Celsius")}
