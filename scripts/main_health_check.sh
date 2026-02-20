#!/bin/bash

# this is for check all service in a single script run 
#it is used to perform crontab task


echo "===== SYSTEM HEALTH CHECK =====" >> ../reports/daily_report.txt
date >> ../reports/daily_report.txt

bash cpu_monitor.sh
bash memory_monitor.sh
bash disk_monitor.sh
bash service_monitor.sh

echo "Health check completed" >> ../reports/daily_report.txt
echo "---------------------------------" >> ../reports/daily_report.txt
