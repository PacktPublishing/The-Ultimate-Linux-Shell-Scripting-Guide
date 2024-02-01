#!/usr/bin/awk -f

BEGIN {FS=":"}
NR==1 {next}
$3 == "M" {masc[$2]=$1}
$3 == "F" {fem[$2]=$1}

END {
	print "\nMasculine Nouns\n----";
		for (m in masc)
			{print m "--" masc[m]; count++}
	print "\nFeminine Nouns\n----";
		for (f in fem)
			{print f "--" fem[f]; count2++}
	print "\nThere are " count " masculine nouns and " count2 " feminine nouns."
}

