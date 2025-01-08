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

#Gather Disk Usage
echo "Gathering Disk usage..."
disk_usage=$(df -h --output=size,used,avail,pcent / | tail -1)

#Parse output to separate the values
disk_total=$(echo $disk_usage | awk '{print $1}')
disk_used=$(echo $disk_usage | awk '{print $2}')
disk_free=$(echo $disk_usage | awk '{print $3}')
disk_percentage=$(echo $disk_usage | awk '{print $4}')

echo "Disk usage: Total: $disk_total, Used: $disk_used, Free: $disk_free, Used Percentage: $disk_percentage"


#Gather top 5 processes by CPU usage
echo "Gathering Top 5 Processes by CPU usage..."
top_cpu_processes=$(ps aux --sort=-%cpu | head -n 6)
echo "Top 5 processes by CPU usage:"
echo $top_cpu_processes


#Gather Top 5 Processes By Memory usage
echo "Gathering Top 5 Processes by memory usage..."
top_mem_processes=$(ps aux --sort=-%mem | head -n 6)
echo "Top 5 processes by memory usage:"
echo $top_mem_processes