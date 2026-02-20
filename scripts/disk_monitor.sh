#!/bin/bash

#this file script iis wript for check disk 
THRESHOLD=80
DISK_USAGE=$(df / | tail -n1 | awk '{print $5}'| cut -d % -f 1)

DATE=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
  echo "$DATE | HIGH DISK USAGE: $DISK_USAGE%" >> ../logs/incident.log
else
  echo "$DATE | DISK OK: $DISK_USAGE%" >> ../logs/system_health.log
fi
