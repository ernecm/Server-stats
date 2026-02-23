https://roadmap.sh/projects/server-stats



# Server Performance Stats

This project is a Bash script developed to analyze basic performance statistics on Linux servers. 

## Project Requirements

The `performance.sh` script meets the following technical requirements:
* **Total CPU Usage**: Calculation of the current usage percentage.
* **Memory Usage**: Detailed breakdown of Free vs. Used memory with percentages.
* **Total Disk Usage**: Free vs. Used disk space with percentages.
* **Top 5 Processes by CPU**: Identification of processes with the highest CPU load.
* **Top 5 Processes by Memory**: Identification of processes with the highest RAM consumption.

---

## Technical Implementation and Commands

Below are the Linux commands used in the script and their specific functions:

### 1. CPU Monitoring
```bash
mpstat
```
### 2. Memory Analysis with AWK
```bash
free -m | grep Mem | awk '{printf "TOTAL: %d MB\nUsed: %d MB (%.2f%%)\nFree: %d MB (%.2f%%)\n", $2, $3, $3/$2*100, $4+$6, ($4+$6)/$2*100}'
```
### 3. Disk Usage
```bash
df -h
```
### 4. Top 5 Processes by CPU
```bash
top -bn1 | head -n 12 | tail -n 6
```
### 5. Top 5 Processes by Memory
```bash
top -bn1 -o %MEM | head -n 12 | tail -n 6
```
