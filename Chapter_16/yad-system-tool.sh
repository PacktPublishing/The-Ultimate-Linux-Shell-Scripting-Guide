#!/bin/bash

yad --title "System tools for a Fedora Workstation" --form --columns=3 \
	--width=540 --height=190 \
	--text="Tools for setting up Fedora or RHEL-type distros" \
	--field="<b>Update System</b>":FBTN "dnf -y upgrade" \
	--field="<b>Authoring and Publishing</b>":FBTN "dnf -y groupinstall --with-optional 'Authoring and Publishing'" \
	--field="<b>Development Tools</b>":FBTN "dnf -y --with-optional groupinstall 'Development Tools'" \
	--button=Exit:1
