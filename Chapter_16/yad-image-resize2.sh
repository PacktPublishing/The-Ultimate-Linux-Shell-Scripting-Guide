#!/bin/bash

imageFile=$(yad --file --title="Select the image file" --width=800 --add-preview)
newfilename=${imageFile%%.*}
suffix=${imageFile: -4}

dialog=$(yad --title "Image Resize" --form --field="Resize parameter" --field="Quality")

size=$(echo $dialog | awk 'BEGIN {FS="|"} {print $1}')
quality=$(echo $dialog | awk 'BEGIN {FS="|"} {print $2}')

convert -resize "$size" -quality "$quality" "$imageFile" -delete 1 "$newfilename"_resized"$suffix"

yad --title="Status" --width=300  --button="OK:0"  --text="All done. Yay!"
