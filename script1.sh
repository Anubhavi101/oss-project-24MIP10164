#!/bin/bash
# Script 1: System Identity Report (Git-focused)
# Author: Your Name | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Anubhavi"          # Fill in your name
SOFTWARE_CHOICE="Git"             # Chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Linux Distribution
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)

# Git-specific info
GIT_VERSION=$(git --version 2>/dev/null)

# --- Display ---
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

# Check if Git is installed
if command -v git &>/dev/null; then
    echo "Git Status    : Installed"
    echo "Git Version   : $GIT_VERSION"
else
    echo "Git Status    : Not Installed"
fi

echo "----------------------------------------"
echo "License Note  : This report uses open-source tools and reflects the principles of free and open-source software."
echo "========================================"
