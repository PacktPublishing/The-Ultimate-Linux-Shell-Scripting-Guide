#!/bin/bash
echo "The uninitialized myvar, without setting -u, looks like this : " $myvar
echo
echo "I'm now setting -u."
set -u
myvar=Donnie
echo "I've just initialized myvar."
echo "The value of myvar is: " $myvar
echo
echo "Let's now try another uninitialized variable."
echo "Here's the uninitialized " $myvar2

