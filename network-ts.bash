#!/bin/bash
rdate=`date "+%Y%m%d.%H%M"`

arp -n >> /tmp/$HOSTNAME$rdate.arp
route -n >> /tmp/$HOSTNAME$rdate.routingtable
tcpdump -U -s 0 -i eth0 -w /tmp/$HOSTNAME$rdate.pcap
