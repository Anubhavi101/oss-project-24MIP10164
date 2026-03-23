#!/bin/bash
# Script 5: Manifest Generator

read -p "Enter tool name: " TOOL
read -p "What is freedom? " FREEDOM
read -p "What will you build? " BUILD

echo "I use $TOOL daily. Freedom means $FREEDOM to me. I want to build $BUILD and share it." > manifesto.txt

echo "Manifesto saved in manifesto.txt"
