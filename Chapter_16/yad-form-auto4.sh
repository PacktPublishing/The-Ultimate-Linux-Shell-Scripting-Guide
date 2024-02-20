#!/bin/bash

bodystyles=$(echo "2 door hardtop,2 door sedan,4 door hardtop,4 door sedan,station wagon,convertible,pickup truck,other")
while [ $? == 0 ]
do
yad --title="Classic Autos" --text="Enter the info about your classic auto:" \
	--form --width=400 --item-separator="," \
	--field="Year":NUM \
	--field="Make" \
	--field="Model" \
	--field="Body Style":CBE \
	--field="Date Acquired":DT >> classic_autos.txt \
	--field="Add any additional notes:":TXT \
	"" "" "" "$bodystyles" "Click on the calender icon"
done
