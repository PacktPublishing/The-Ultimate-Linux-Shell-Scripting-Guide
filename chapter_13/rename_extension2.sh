#!/bin/bash

for file in *.JPG; do
	mv -- $file "$(basename -- "$file" .JPG).jpg"
done
