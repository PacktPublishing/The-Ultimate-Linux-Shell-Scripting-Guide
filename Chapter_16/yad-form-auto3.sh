#!/bin/bash

while [ $? == 0 ]
do
yad --title="Classic Autos" --text="Enter the info about your classic auto:" \
	--form --width=400 \
	--field="Year":NUM \
	--field="Make" \
	--field="Model" \
	--field="Body Style" \
	--field="Date Acquired":DT >> classic_autos.txt
done
