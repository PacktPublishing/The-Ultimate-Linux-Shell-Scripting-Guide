#!/bin/bash
command -v Xdialog

if [[ $? == 0 ]] && [[ -n $DISPLAY ]]; then
	diag=Xdialog
else
	diag=dialog
fi
$diag --title "Dialog message box" \
	--begin 2 2 \
	--msgbox "\n Hello world!" 20 50
$diag --begin 4 4 --yesno "Do you believe in magic?" 0 0

case $? in
	0)
		clear
		echo "Cool!  I'm glad that you do." ;;
	1)	
		clear
		echo "I'm sorry that you live such a dull life." ;;
	255)
		clear
		echo "You pressed the ESC key." ;;
esac
