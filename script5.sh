#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL daily, and it reflects the idea of $FREEDOM in technology." >> $OUTPUT
echo "Open source allows collaboration, transparency, and continuous improvement." >> $OUTPUT
echo "I aim to build $BUILD and share it freely with the community." >> $OUTPUT
echo "This represents my belief in knowledge sharing and innovation." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
