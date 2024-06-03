#!/bin/bash
if [ $(id -u) == 0 ]; then
	echo "This user is root."
else
	echo "This user is not root."
	echo "This user's name is $(id -un)."
fi
