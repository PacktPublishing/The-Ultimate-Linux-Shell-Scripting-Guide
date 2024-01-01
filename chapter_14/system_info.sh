#!/bin/bash 

# sysinfo_page - A script to produce an HTML file 
. /usr/local/lib/sysinfo.lib 
title="System Information for $HOSTNAME" 
right_now=$(date +"%x %r %Z") 
time_stamp="Updated on $right_now by $USER" 

cat <<- _system-info_ > sysinfo.html
    <html> 
    <head> 
        <title> 
        $title 
        </title> 
    </head> 

    <body> 
    <h1>$title</h1> 
    <p>$time_stamp</p> 
    $(system_info) 
    $(show_uptime) 
    $(drive_space) 
    $(home_space) 
    $(open_files_root)
    $(open_files_users)
    $(VSZ_info)
    </body> 
    </html> 
_system-info_

if [[ -f /usr/local/bin/pandoc ]] || [[ -f /usr/bin/pandoc ]]; then
	pandoc -o sysinfo.pdf sysinfo.html
	rm sysinfo.html
fi
exit
