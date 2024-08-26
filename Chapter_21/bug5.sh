#! /bin/bash
echo '1 2 3' > sample.data
cut -d' ' -f1,3 sample.data > tmp.data
read x z < tmp.data
echo $((x+z))
