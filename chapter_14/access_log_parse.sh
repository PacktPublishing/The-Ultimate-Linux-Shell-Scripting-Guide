#!/bin/bash
#
timestamp=$(date +%F_%I-%M-%p)
awk 'BEGIN {FS="\""} {print "\"" $6 "\""}' /var/log/httpd/access_log | sort | uniq -c | sort -k 1,1 -nr > user_agent_$timestamp.tsv
awk '{print $1}' /var/log/httpd/access_log | sort -V | uniq -c | sort -k1,1 -nr >> source_IP_addreses_$timestamp.tsv
awk '{print $7}' /var/log/httpd/access_log | sort | uniq -c | sort -k1,1 -nr > URLs_Requested_$timestamp.tsv
awk '{print $9}' /var/log/httpd/access_log | sort | uniq -c | sort -k1,1 -nr > HTTP_Status_Codes_$timestamp.tsv
