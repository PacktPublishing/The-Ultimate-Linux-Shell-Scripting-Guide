#!/bin/bash

awk -F: '$3 >= 1000 && $3 <=60000 {print $1, $7 > "users.txt"}' /etc/passwd
