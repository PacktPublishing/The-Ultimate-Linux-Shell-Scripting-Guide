#!/usr/bin/awk -f

{
	if(/kernel/) {
		print $0
	}

}
