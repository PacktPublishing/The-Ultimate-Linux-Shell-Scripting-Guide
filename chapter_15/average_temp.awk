#!/usr/bin/awk -f

BEGIN{temp_sum=0; total_records=0; print "Calculate the average temperature."}
$2=="F"{temp_sum += ($1-32) / 1.8; total_records += 1;}
$2=="C" {temp_sum += $1; total_records += 1}
END {average_temp = temp_sum/total_records; print "The average temperature is: \n\t " average_temp " Celsius."}
