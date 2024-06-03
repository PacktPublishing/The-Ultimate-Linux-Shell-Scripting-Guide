#!/bin/bash
echo -n "Choose Background Color for Terminal(b-black,g-grey,y-yellow): " 
read color 
case "$color" in 
b) 
  setterm -background black -foreground white
  ;; 
g) 
  setterm -background white -foreground black 
  ;; 
y) 
  setterm -background yellow -foreground red 
  ;; 
*) 
  echo "I do not understand" 
  ;; 
esac 
exit
