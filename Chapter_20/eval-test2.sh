#!/bin/bash

desiredDate='date --date="1 month ago"'

echo "I'm creating a report with the $(eval "$desiredDate") timestamp in the filename." > somefile_"$(eval "$desiredDate")".txt
