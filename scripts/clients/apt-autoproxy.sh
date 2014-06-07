#!/bin/sh

#ip=192.168.178.1;port=80;nc -zw1 $ip $port&&echo http://$ip:$port/||echo DIRECT
#ip=192.168.178.1; port=80; nc -zw1 $ip $port>/dev/null && echo http://$ip:$port/ || echo DIRECT
ip=192.168.178.62 # Raspberry-Pi
#ip=192.168.178.129 # apt-cache-box
port=3142
nc -zw1 $ip $port>/dev/null && echo http://$ip:$port/ || echo DIRECT

