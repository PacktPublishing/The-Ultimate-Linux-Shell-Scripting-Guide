#!/bin/bash
command -v Xdialog

if [[ $? == 0 ]] && [[ -n $DISPLAY ]]; then
        diag=Xdialog
else
        diag=dialog
fi

$diag --title "Dialog message box" \
	--begin 2 2 \
	--msgbox "\nHowdy folks!" 15 50
clear
