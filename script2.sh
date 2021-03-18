#!/bin/bash

sysinfo=$(lshw -short) #system
net=$(ifconfig -a) #network
fw=$(ufw status verbose) #network
prinfo=$(ps -f) #system
if=$(netstat -i) #network
dinfo=$(df -h) #memory


echo -e "Information about my system\n\nHardware info\n\n$sysinfo\n\nProcess info\n\n$prinfo\n\n\n" > Info.txt
echo -e "Information about my network\n\nInterfaces info\n\n$net\n\n$if\n\nFireWall info\n\n$fw\n\n\n" >>Info.txt
echo -e "Information about my hard memory\n\n$dinfo\n\n\n" >> Info.txt


