#!/bin/bash
file=$1
echo "The market share for Windows is $(grep 'Win' $file | cut -d, -f2 | paste -s -d+ | bc)%." > report_for_$(date +%F).txt

echo "The market share for macOS is $(grep 'OS X' $file | cut -d, -f2)%." >> report_for_$(date +%F).txt

echo "The market share for Linux is $(grep 'Linux' $file | cut -d, -f2)%." >> report_for_$(date +%F).txt

echo "The market share for Chrome is $(grep 'Chrome OS' $file | cut -d, -f2)%." >> report_for_$(date +%F).txt

echo "The market share for Unknown is $(grep 'Unknown' $file | cut -d, -f2)%." >> report_for_$(date +%F).txt

echo "The market share for Others is $(grep 'Other' $file | cut -d, -f2)%." >> report_for_$(date +%F).txt
