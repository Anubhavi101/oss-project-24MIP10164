#!/bin/bash
# Script 5: Open Source Manifesto

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

FILE="manifesto.txt"

echo "Open Source Manifesto" > $FILE
echo "I use $TOOL daily." >> $FILE
echo "Freedom means $FREEDOM." >> $FILE
echo "I will build $BUILD and share it." >> $FILE

echo "Saved in $FILE"
