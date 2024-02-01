#!/usr/bin/awk -f

{
	if($5 ~ /kernel/) {
		print "Kernel here in Field 5"
	}

	else if($5 ~ /systemd/) {
		print "Systemd here in Field 5"
	}

	else {
		print "No kernel or systemd in Field 5"
	}
}
