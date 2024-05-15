#!/bin/bash

xargs -i firewall-cmd --permanent --add-rich-rule="rule family="ipv4" source address={} drop" < ip-address_blacklist.txt

firewall-cmd --reload


