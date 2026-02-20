#!/bin/bash

#this script is created for check memory health

THRESHOLD=80
MEM_USED=$(free grep "Mem:" | awk '{print $3/$2*100 }' | cut -d . -f 1)

DATE=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$MEM_USED" -gt "$THRESHOLD" ]; then
  echo "$DATE | HIGH MEMORY USAGE: $MEM_USED%" >> ../logs/incident.log
else
  echo "$DATE | MEMORY OK: $MEM_USED%" >> ../logs/system_health.log
fi
