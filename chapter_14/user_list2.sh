#!/bin/bash

awk 'BEGIN {OFS = ","; FS = ":"}; $3 >= 1000 && $3 <= 60000 {print $1,$3,$7 > "users.csv"}' /etc/passwd
