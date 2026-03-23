#!/bin/bash
# Script 4: Log Analyzer

LOGFILE="/var/log/syslog"
COUNT=0

while read line
do
    if echo "$line" | grep -i "error" > /dev/null
    then
        COUNT=$((COUNT+1))
    fi
done < $LOGFILE

echo "Total ERROR lines: $COUNT"
