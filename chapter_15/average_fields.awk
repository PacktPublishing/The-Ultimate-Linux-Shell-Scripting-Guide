#!/usr/bin/awk -f

{
addend=1
sum=0
while (addend <= NF) {
	sum = sum + $addend
	addend++
}
print "Line " NR "\n\t" "Sum: " sum "\n\t" "Average: " sum/NF
}
