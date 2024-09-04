#!/bin/zsh

fruits=(apple orange banana apple orange kiwi)
echo "Let's look at the entire list of fruits."
for fruit in $fruits; do
	echo $fruit
done
echo "*****************"
echo "*****************"
echo "Now, let's eliminate the duplicate fruits."
printf "%s\n" ${(u)fruits}
