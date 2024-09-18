#! /bin/bash
echo '1 2 3' > sample.data
read -r x z <<<$(cut -d' ' -f1,3 sample.data)
echo $((x+z))
