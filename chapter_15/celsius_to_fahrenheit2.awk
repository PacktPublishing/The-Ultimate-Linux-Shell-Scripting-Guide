#!/usr/bin/awk -f

#NR==1; NR>1{printf("%.1f %s\n",($2=="C" ? (($1+32)*9) / 5 : $1),"Fahrenheit")}
NR==1; NR>1{printf("%-11s %s\n",($2=="C" ? (($1+32)*9) / 5 : $1),"Fahrenheit")}
