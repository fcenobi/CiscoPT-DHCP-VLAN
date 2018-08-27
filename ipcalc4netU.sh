#!/bin/sh

apt-get update
apt-get install ipcalc
ipaddr=$(ip -o -4 addr list eth0 | awk '{print $4}')
ipcalc ${ipaddr} 26
