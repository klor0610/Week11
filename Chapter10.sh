#!/bin/bash

echo "enable sshd"
update-rc.d sshd on
echo ""
echo "hit enter to see programs currently using or listening to ports"
read
lsof -n -i
echo""
echo "hit enter to see everything crossing your network: ctrl c to exit"
read
sudo tcpdump
echo "hit enter to run scan on google.com"
read
nmap www.google.com
echo ""
echo "hit enter to see RPC services"
read
rpcinfo -p localhost
echo ""
echo "hit enter to view Unix domain sockets currently in use"
read
lsof -U
