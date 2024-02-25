#!/bin/bash

for picture in *.jpg; do
	convert -resize 15% "$picture" "${picture%.jpg}_small.jpg"
done
