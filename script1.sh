#!/bin/bash
# Script 1: System Identity Report

# Variables
STUDENT_NAME="Anubhavi"
SOFTWARE_CHOICE="Git"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)

# Git info
GIT_VERSION=$(git --version 2>/dev/null)

# Output
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software      : $SOFTWARE_CHOICE"
echo "Kernel        : $KERNEL"
echo "User          : $USER_NAME"
echo "Uptime        : $UPTIME"
echo "Distro        : $DISTRO"
echo "Date          : $DATE"
echo "----------------------------------------"

if command -v git &>/dev/null; then
    echo "Git Status    : Installed"
    echo "Git Version   : $GIT_VERSION"
else
    echo "Git Status    : Not Installed"
fi

echo "========================================"
