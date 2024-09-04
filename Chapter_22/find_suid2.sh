#!/bin/zsh

suid_results_file=$1

if [[ -f "$suid_results_file" ]]; then
	echo "This file already exists."
	exit
fi
ls -ld /**/*(s) > "$suid_results_file"
