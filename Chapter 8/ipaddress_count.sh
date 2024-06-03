#!/bin/bash
timestamp=$(date +%F)
echo "These addresses have accessed this webserver as of $timestamp." > ipaddress_list_$timestamp.txt
cut -d" " -f1 /var/log/httpd/access_log | sort | uniq -c | sort -nr >> ipaddress_list_$timestamp.txt
