#!/bin/bash

command -v Xdialog
if [[ -n $DISPLAY ]] && [[ $? == 0 ]]; then
        diag=Xdialog
else
        diag=dialog
fi

$diag --title "Dialog message box" \
	--begin 2 2 \
	--msgbox "\nHowdy folks!" 15 50
clear
