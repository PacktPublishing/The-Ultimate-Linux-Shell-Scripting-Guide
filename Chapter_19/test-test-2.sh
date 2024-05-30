#!/bin/bash

if [ "$1" == z* ]; then
    echo "Pattern matched: "$1" starts with 'z'."
else
    echo "Pattern not matched: "$1" doesn't start with 'z'."
fi
