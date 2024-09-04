#!/bin/zsh
zmodload zsh/mathfunc
your_number=$1
((squareroot=sqrt(your_number)))
echo $squareroot
