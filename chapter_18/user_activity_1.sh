#!/bin/bash
if [[ $1 == "" ]] ; then
	echo "You must specify a user name."
	echo "Usage: sudo ./user_activity_1.sh username "
	exit
fi

if [[ -f /var/log/secure ]] ; then
	logfile=/var/log/secure
elif [[ -f /var/log/auth.log ]] ; then
	logfile=/var/log/auth.log
elif [[ -n $(awk /suse/ /etc/os-release) ]] ; then
	logfile=/var/log/messages
else
	echo "I don't know this operating system."
	exit
fi

username=$1
echo "=== User Account Activity ===" > user_activity_for_"$username"_$(date +"%F_%H-%M").txt

# Check user activity in system logs
echo "=== Recent Logins ===" >> user_activity_for_"$username"_$(date +"%F_%H-%M").txt
last | grep $username >> user_activity_for_"$username"_$(date +"%F_%H-%M").txt

# Check sudo command usage
echo "=== Sudo Command Usage ===" >> user_activity_for_"$username"_$(date +"%F_%H-%M").txt
grep sudo "$logfile" | grep $username >> user_activity_for_"$username"_$(date +"%F_%H-%M").txt
