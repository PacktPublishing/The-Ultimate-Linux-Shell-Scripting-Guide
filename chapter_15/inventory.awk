#!/usr/bin/awk -f
BEGIN {
	FS="\n"
	RS=""
	ORS=""
}

{
	count=1
	while (count<NF) {
		print $count ","
		count++
	}
	print $NF "\n"
}
