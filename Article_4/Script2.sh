#!/bin/bash

# 1. Identity Check
echo "Current User: $USER"
echo "Current Directory: $(pwd)"

# 2. System Stats
echo "--- System Health ---"
date
uptime
free -h

# 3. Directory Management
if [[ "$(pwd)" == "/home/Blankstar/Linux" ]]; then
    echo "You are in the correct dev environment."
    ls -la
else
    echo "Warning: You are running this from an external directory."
fi
