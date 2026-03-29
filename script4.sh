#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

echo "Keyword '$KEYWORD' found $COUNT times"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
