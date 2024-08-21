#!/bin/bash

command -v Xdialog

if [[ $? == 0 ]] && [[ -n $DISPLAY ]]; then
        diag=Xdialog
else
        diag=dialog
fi

cmd=($diag --keep-tite --menu "Select options:" 22 76 16)

options=(1 "Remote SSH to Debian miner"
         2 "Remote SSH to Fedora miner"
         3 "Remote SSH to Fedora Workstation"
         4 "Remote SFTP to Fedora Workstation")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            ssh donnie@192.168.0.3
            ;;
        2)
            ssh donnie@192.168.0.12
            ;;
        3)
            ssh donnie@192.168.0.16
            ;;
        4)
            sftp donnie@192.168.0.16
            ;;
    esac
done
