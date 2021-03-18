#!/bin/bash

upt=$(uptime)
users=$(cat /etc/passwd)
log=$(last)
topcpu=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n11)
topmem=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n11)
ports=$(ss -tu)
vmem=$(cat /proc/meminfo)
hmem=$(df -h)

echo -e "Uptime\n\n$upt\n\n\n\n" > LogFile.txt  #I can`t think of a better name, sorry)))
echo -e "Current users\n\n$users\n\n\n\n" >> LogFile.txt
echo -e "Recent logins\n\n$log\n\n\n\n" >> LogFile.txt
echo -e "TOP-10 processes by RAM usage\n\n$topmem\n\nTOP-10 processes by CPU\n\n$topcpu\n\n\n\n" >> LogFile.txt
echo -e "Open TCP-UDP ports\n\n$ports\n\n\n\n" >> LogFile.txt
echo -e "Virtual Memory usage\n\n$vmem\n\n\n\n" >> LogFile.txt
echo -e "Usage of disk space\n\n$hmem" >> LogFile.txt


