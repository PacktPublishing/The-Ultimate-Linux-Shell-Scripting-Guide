#!/bin/bash

checkWebserver="systemctl status httpd"

eval $checkWebserver
