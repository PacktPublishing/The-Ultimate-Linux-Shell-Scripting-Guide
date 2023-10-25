#!/bin/bash
if [ ! -d Drive_Reports ]
then
	mkdir Drive_Reports
fi

cd Drive_Reports
datestamp=$(date +%F)_Tevault
filesystem=$(mount | grep -w / | cut -d" " -f5)
os=$(grep "PRETTY_NAME" /etc/os-release)

if [ -f Drive_Report_$datestamp.txt ]
then
	echo "You have already run this script today."
	exit 1
fi

echo "Tester: Donnie" > Drive_Report_$datestamp.txt
echo "Tester address: donnie@any.net" >> Drive_Report_$datestamp.txt
echo "Test System: ${os:12} with $filesystem" >> Drive_Report_$datestamp.txt
echo " " >> Drive_Report_$datestamp.txt
echo "Command: sar -d" >> Drive_Report_$datestamp.txt
sar -d >> Drive_Report_$datestamp.txt
echo " "
echo "Command: sar -b" >> Drive_Report_$datestamp.txt
sar -b >> Drive_Report_$datestamp.txt
echo " " >> Drive_Report_$datestamp.txt
sleep 90
echo "Command:  smartctl -x /dev/sda" >> Drive_Report_$datestamp.txt
/usr/sbin/smartctl -x /dev/sda >> Drive_Report_$datestamp.txt
