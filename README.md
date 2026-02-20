# Linux Server Monitoring & Incident Automation

## Overview
This project monitors a Linux server's health by checking CPU, memory, disk usage, and critical services.

## Features
- CPU, Memory, Disk monitoring
- Service status checks
- Incident logging
- Daily health reports
- Cron job automation

## PROJECT STRUCTURE

---
```bash 
linux-server-monitoring/
├── scripts/
│   ├── cpu_monitor.sh
│   ├── memory_monitor.sh
│   ├── disk_monitor.sh
│   ├── service_monitor.sh
│   └── main_health_check.sh
│
├── logs/
│   ├── system_health.log
│   └── incident.log
│
├── reports/
│   └── daily_report.txt
│
├── cron/
│   └── cron_job.txt
│
└── README.md
---
