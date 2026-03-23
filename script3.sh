#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/var/log")

for DIR in "${DIRS[@]}"
do
    echo "Checking $DIR"
    ls -ld $DIR
    du -sh $DIR
    echo "----------------------"
done
