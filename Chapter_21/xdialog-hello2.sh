#!/bin/bash -x
command -v Xdialog

if [[ $? == 0 ]] && [[ -n $DISPLAY ]]; then
        diag=Xdialog
	sleep 10
else
        diag=dialog
	sleep 10
fi

$diag --title "Dialog message box" \
	--begin 2 2 \
	--msgbox "\nHowdy folks!" 15 50
clear
