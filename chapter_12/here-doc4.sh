#!/bin/bash
title="System Information for $HOSTNAME"
current_date=$(date +%F)
cat <<- _system-info_ > sysinfo.html
<html>
<head>
<title>$title</title>
</head
<body>
$(uname -opr) <br>
Updated on:  $current_date
</body>
</html
_system-info_
pandoc -o sysinfo.pdf sysinfo.html
rm sysinfo.html
