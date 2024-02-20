#!/bin/bash
while [ $? == 0 ]
do
	filetocheck=$(yad --file --multiple --separator='\n' --add-preview --width=800)
	sha512sum $filetocheck >> file_checksums.txt
done
