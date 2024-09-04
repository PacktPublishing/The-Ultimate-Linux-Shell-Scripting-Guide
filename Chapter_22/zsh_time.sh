#!/bin/zsh
zmodload zsh/datetime

timestamp=$(strftime '%A-%F_%T')
echo "I want to create a file at $timestamp." > "timefile_$timestamp.txt"
