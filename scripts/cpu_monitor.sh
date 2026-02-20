#!/bin/bash

# this script is used for check cpu health 

THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')

DATE=$(date "+%Y-%m-%d %H:%M:%S")

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
  echo "$DATE | HIGH CPU USAGE: $CPU_USAGE%" >> ../logs/incident.log
else
  echo "$DATE | CPU OK: $CPU_USAGE%" >> ../logs/system_health.log
fi


