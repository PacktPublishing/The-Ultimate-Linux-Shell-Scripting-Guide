#!/bin/bash
. /usr/local/lib/baseconv_local.lib
until [ "$choice" = "q" ]; do
	echo "Choose your desired function from the following list: "
	echo "For hex to decimal, press \"1\"."
	echo "For decimal to hex, press \"2\"."
	echo "For octal to hex, press \"3\"."
	echo "For hex to octal, press \"4\"."
	echo "For decial to binary, press \"5\"."
	echo "To quit, press \"q\"."

	read choice
	case $choice in
		1) echo "Enter the hex number that you would like to convert. "
			read input_num
			result=$(h2d)
			echo $result
			echo
			echo
			;;
		2) echo "Enter the decimal number that you would like to convert. "
 			read input_num
			result=$(d2h)
			echo $result
			echo
			echo
			;;
		3) echo "Enter the octal number that you would like to convert. "
			read input_num
			result=$(o2h)
			echo $result
			echo
			echo
			;;
		4) echo "Enter the hex number that you would like to convert. "
			read input_num
			result=$(h2o)
			echo $result
			echo
			echo
			;;
		5) echo "Enter the decimal number that you would like to convert to binary. "
			read input_num
			result=$(d2b)
			echo $result
			echo
			echo
			;;
		q) exit
			;;
		*) echo "You did not enter a valid choice."
			echo
			echo
	esac
done

		

