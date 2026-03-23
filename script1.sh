#!/bin/bash
# Script 1: System Identity Report

echo "==============================="
echo " Open Source Audit"
echo "==============================="

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

echo "Kernel Version: $KERNEL"
echo "Current User: $USER_NAME"
echo "System Uptime: $UPTIME"
echo "Current Date: $DATE"
