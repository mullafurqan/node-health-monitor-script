# Linux Node Health Monitoring Script

A simple Bash script to monitor the health and performance of a Linux system.

This script displays:
- Disk usage
- Memory usage
- Running processes
- CPU information
- Active process IDs

It is useful for beginners learning:
- Linux Administration
- Shell Scripting
- DevOps Monitoring Basics

---

# Features

- Displays disk space usage
- Displays RAM usage
- Shows running system processes
- Displays CPU core count
- Extracts process IDs using `awk`
- Includes debugging and error handling options

---

# Technologies Used

- Bash Shell Scripting
- Linux Commands
- awk
- grep

---

# Script Used

```bash
#!/bin/bash

#############################################
# Author: Furqan
# Date: 21-05-2026
#
# This script provides the health of the node
#############################################

# Exit script if error occurs
set -e

# Enable debug mode
set -x

# Exit if pipeline error occurs
set -o pipefail

# Display disk usage in human-readable format
df -h

# Display memory usage in GB
free -g

# Display running processes
top

# Display number of CPU cores
nproc

# Display running process IDs
ps -ef | grep usr | awk '{print $2}'
```

---

# Installation

## Clone the repository

```bash
git clone https://github.com/mullafurqan/node-health-monitor-script.git
```

## Navigate to project directory

```bash
cd node-health-monitor-script
```

## Give execute permission

```bash
chmod +x node-health-monitor.sh
```

or

```bash
chmod 777 node-health-monitor.sh
```

# Usage

Run the script using:

```bash
./node-health-monitor.sh
```

or

```bash
sh node-health-monitor.sh
```

---

# Commands Explained

| Command | Purpose |
|---|---|
| `df -h` | Shows disk usage |
| `free -g` | Shows memory usage in GB |
| `top` | Displays running processes |
| `nproc` | Shows number of CPU cores |
| `ps -ef` | Lists all processes |
| `awk '{print $2}'` | Prints process IDs |

---

# Debugging Options Used

## `set -e`

Exits the script immediately if any command fails.

## `set -x`

Displays each command before execution (debug mode).

## `set -o pipefail`

Stops script execution if any command in a pipeline fails.

---

# Example Output

```bash
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /

              total   used   free
Mem:             15      6      3

CPU(s): 4
```

---

# Learning Objectives

This project helps in learning:

- Linux commands
- Shell scripting basics
- Process monitoring
- System resource monitoring
- DevOps fundamentals

---

# Future Improvements

- Add CPU usage percentage
- Add email alerts
- Add logging functionality
- Add disk usage alerts
- Schedule using cron jobs

---

# Author

Furqan Mulla

GitHub:
https://github.com/mullafurqan

---


