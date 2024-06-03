#!/bin/bash
secretword=Donnie
word=
echo "Hi there, $USER!"
echo "Would you like to play a guessing game?"
echo "If so, then enter the correct secret word"
echo "to win a special prize."
echo
echo
until [[ "$word" = "$secretword" ]]
do
	echo -n "Enter your guess.  "
	read word
done
echo "Yay!  You win a pat on the back!"
