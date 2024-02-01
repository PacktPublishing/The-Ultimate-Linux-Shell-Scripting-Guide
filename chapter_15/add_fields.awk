#!/usr/bin/awk -f

{
addend=1
sum=0
while (addend <= NF) {
	sum = sum + $addend
	addend++
}
print "Line " NR " Sum is " sum
}
