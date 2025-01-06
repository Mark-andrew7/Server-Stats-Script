#!/bin/bash

# Script to analyze basic server performance stats

#Script gathers key statistics such as CPU usage, memory usage, disk usage, top processes by CPU and memory


# Gather CPU Usage
echo "Gathering CPU usage..."
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print 100 - $1}')
echo "Total CPU Usage: $cpu_usage%"

#Gather Memory Usage
echo "Gather Memory usage..."
memory_stats=$(free -m | awk 'NR==2{printf "Total: %s MB , Used: %s MB, Free: %s MB Used Percentage: %.2f%%", $2, $3, $4, ($3/$2)*100}')
echo "Memory Usage": $memory_stats