#! /bin/bash
echo '1 2 3' > sample.data
cut -d' ' -f1,3 sample.data | read x z
echo $((x+z))
