#!/bin/bash
echo "The uninitialized myvar, without setting -u, looks like this : " $myvar
echo
myvar=Donnie
echo "I've just initialized myvar."
echo "The value of myvar is: " $myvar

