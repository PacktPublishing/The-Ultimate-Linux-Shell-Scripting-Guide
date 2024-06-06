#!/bin/bash
[ -f myfile.txt ] && echo "This file exists." || echo "This file does not exist."

echo 
echo "We will now create myfile.txt if it does not exist, and make it with only read permissions for $USER." 

[ -f myfile.txt ] || touch myfile.txt 
chmod 400 myfile.txt 
ls -l myfile.txt 
echo 
echo "We will now see if myfile.txt is writable." 
[ -w myfile.txt ] && echo "This file is writable." || echo "This file is not writable."

echo 
echo "We will now make the file writable for $USER." 
chmod 600 myfile.txt 
ls -l myfile.txt 
[ -w myfile.txt ] && echo "This file is writable." || echo "This file is not writable." 
echo 
echo 

echo 
echo "We will now remove the writable permission from myfile.txt."
chmod 400 myfile.txt
[ -w myfile.txt ] && echo "This file is writable." || echo "This file is not writable."

echo
echo "We will now make the file writable, if it is not already."
[ -w myfile.txt ] || chmod 600 myfile.txt
ls -l myfile.txt
echo
echo "We will now remove the file."
rm myfile.txt
echo
echo
[ -d somedir ] || echo "somedir does not exist."
[ -d somedir ] || mkdir somedir && echo "somedir has just been created."
ls -ld somedir
echo
echo "Now for something different, let's see if the noclobber shell option is set."
[ -o noclobber ] && echo "The noclobber option is set." || echo "The noclobber option is not set."
echo
echo "Let's now set the noclobber option and test again."
set -o noclobber
[ -o noclobber ] && echo "The noclobber option is set." || echo "The noclobber option is not set."


exit
