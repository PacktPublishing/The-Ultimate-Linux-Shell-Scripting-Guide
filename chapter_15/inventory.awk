#!/usr/bin/awk -f
BEGIN {
	FS="\n"
	RS=""
	ORS=""
}

{
	count=1
	while (count<NF) {
		print $count "\t"
		count++
	}
	print $NF "\n"
}
