#!/bin/bash

desiredDate='date --date="1 month ago"'
datestamp=$(eval "$desiredDate")

echo "I'm creating a report with the $datestamp timestamp in the filename." > somefile_"$datestamp".txt
