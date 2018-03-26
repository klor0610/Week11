#!/bin/bash

#see all active IP addresses
echo "Press enter to see a list of all active IP addresses"
read
ifconfig
echo "hit enter to see the /etc/hosts file to view more hostnames and IP Addresses"
read
cd /etc
cat hosts
cd ~
echo ""
sleep 1.5s
echo "Hit enter to see the routing table"
read
route -n
echo ""
echo "now lets take a look at the IP address from google.com. Hit enter"
read
host www.google.com
echo ""
echo ""
echo "examine the path of your packets to google.com"
sleep 2s
traceroute www.google.com
echo ""
echo "now that we know the IP Address of google.com, let's ping their IP"
sleep 2s
ping -c 4 172.217.2.164
echo "you can also ping the loopack *lo seen in ifconfig to ping your own"
echo "machine in current use"
echo ""
echo "hit enter to see the loopback"
read
ping -c 4 127.0.0.1
echo ""
echo "hit enter to see all currently open connetions on your macihine under TCP"
read
sleep 1s
netstat -t
echo ""
echo "hit enter to view well-known ports and their port numbers into names"
read
cd /etc
cat services | less
echo ""
echo "hit enter"
read
echo "enable IP forwarding by setting =1"
echo ""
sudo sysctl -w net.ipv4.ip_forward=1
echo ""
echo "press enter to see the current configurations on the IP tables system"
read
sudo iptables -L
echo ""
sleep 1s
echo "lets take a look at the ARP Cache (MAC addresses)"
echo "hit enter"
read
arp -n

