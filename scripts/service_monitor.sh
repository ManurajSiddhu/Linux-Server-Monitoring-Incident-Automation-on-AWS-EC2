#!/bin/bash

#this script perform check service status task

SERVICE="sshd"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

if systemctl is-active --quiet $SERVICE; then
  echo "$DATE | SERVICE $SERVICE RUNNING" >> ../logs/system_health.log
else
  echo "$DATE | SERVICE $SERVICE DOWN" >> ../logs/incident.log
fi
