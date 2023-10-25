#!/bin/bash
os=$(uname) 
quantity=$(cut -f3 -d: /etc/passwd | grep -w 0 | wc -l) 
if [ $os == Linux ]; then
        if [ $quantity -gt 1 ]; then
       
                echo "CRITICAL.  There are $quantity accounts with UID 0." 
                exit 2 
        else 
                echo "OKAY.  There is only one account with UID 0." 
                exit 1
        fi 
elif [ $os == Darwin ]; then
        if [ $quantity -gt 1 ]; then
                echo "CRITICAL.  There are $quantity accounts with UID 0." 
                exit 2 
        else 
                echo "OKAY.  There is only one account with UID 0." 
                exit 1
        fi 
elif [ $os == SunOS ]; then
        if [ $quantity -gt 1 ]; then
                echo "CRITICAL.  There are $quantity accounts with UID 0." 
                exit 2 
        else 
                echo "OKAY.  There is only one account with UID 0." 
                exit 1
        fi 
elif [ $os == FreeBSD ]; then
        if [ $quantity -gt 2 ] 
        then 
                echo "CRITICAL.  There are $quantity accounts with UID 0." 
                        exit 2 
        else 
                        echo "OKAY.  There are only two accounts with UID 0." 
                        exit 1 
        fi 
else
	echo "I don't know this $os operating system."
fi
