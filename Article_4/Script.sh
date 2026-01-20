#!/bin/bash

# My Script on system health report
echo "   SYSTEM HEALTH REPORT      "

# 1. Print Current Date
echo "Date: $(date)"
echo ""

# 2. Print System Uptime
echo "System Uptime:"
uptime -p
echo ""

# 3. Check Memory Usage
echo "Memory Usage:"
free -h | grep "Mem"
echo ""

echo "   END OF REPORT             "
