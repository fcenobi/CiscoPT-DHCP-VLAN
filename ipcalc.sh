#!/bin/sh

ipaddr=$(/usr/sbin/ip -o -4 addr list eth0 | awk '{print $4}')
/usr/bin/ipcalc ${ipaddr} --split 26
