#!/bin/bash
# Script 2: Package Checker

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    git --version
else
    echo "$PACKAGE is NOT installed"
fi
