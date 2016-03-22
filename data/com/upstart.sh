#!/bin/bash


copy_conf=`cp ./data/com/ssdd4.conf /etc/init/`
copy_etc=`cp ./data/com/ssdd4.conf /etc/`
reboot=`reboot`

echo "$copy_conf"
echo "$copy_etc"
echo "$reboot"
echo "Server Reboted"
