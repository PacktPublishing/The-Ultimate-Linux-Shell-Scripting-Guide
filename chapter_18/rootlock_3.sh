#!/bin/bash

os=$(uname)
quantity=$(cut -f3 -d: /etc/passwd | grep -w 0 | wc -l)


linux_sunos() {
	if [ $quantity -gt 1 ] ; then

                echo "CRITICAL.  There are $quantity accounts with UID 0." 
        else
                echo "OKAY.  There is only one account with UID 0." 
        fi
	echo
	echo
	rootlock=$(awk 'BEGIN {FS=":"}; /root/ {print $2}' /etc/shadow | cut -c1)
	if [ "$rootlock" == '$' ] ; then
		echo "CRITICAL!!  The root account is not locked out."
		echo "Do you want to disable the root account? (y/n)"
		read answer
		if [ $answer == y ] ; then
			passwd -d root
			passwd -l root
		else
			exit
		fi
	else
		echo "The root account is locked out, as it should be."
	fi
}

freebsd() {
        if [ $quantity -gt 2 ]
        then
                echo "CRITICAL.  There are $quantity accounts in the passwd file with UID 0." 
        else
                echo "OKAY.  There are only two accounts in the passwd file with UID 0." 
                echo 
                echo 
		
        fi

        rootlock=$(awk 'BEGIN {FS=":"}; $1 ~ /root/ {print $2}' /etc/master.passwd | cut -c1)

        if [ "$rootlock" == '$' ] ; then
                echo "CRITICAL!!  The root account is not locked out."
		echo "Do you want to disable the root account? (y/n)"
                read answer
                if [ $answer == y ] ; then
                        pw mod user root -w no
		fi
        else
                echo "The root account is locked out, as it should be."
        fi

        toorlock=$(awk 'BEGIN {FS=":"}; /toor/ {print $2}' /etc/master.passwd | cut -c1)

        if [ "$toorlock" == '$' ] ; then
                echo "CRITICAL!!  The toor account is not locked out."
		echo "Do you want to disable the toor account? (y/n)"
                read answer
                if [ $answer == y ] ; then
                        pw mod user toor -w no
                fi
        else
                echo "The toor account is locked out, as it should be."
        fi
}
if [ $os == Linux ] || [ $os == SunOS ] ; then
        linux_sunos
elif [ $os == FreeBSD ] ; then
        freebsd
else
        echo "I don't know this operating system."
fi
	
