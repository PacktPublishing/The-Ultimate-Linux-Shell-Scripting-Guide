#!/bin/bash -xv

command -v Xdialog
if [[ -n $DISPLAY ]] && [[ $? == 0 ]]; then
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
