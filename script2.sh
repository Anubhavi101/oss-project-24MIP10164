#!/bin/bash
# Script 2: FOSS Package Inspector (Git-focused)

PACKAGE="git"

# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy note based on package
case $PACKAGE in
    httpd) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    git) echo "Git: distributed version control empowering collaboration and transparency" ;;
    vlc) echo "VLC: freedom to play any media, anywhere" ;;
    firefox) echo "Firefox: privacy-focused open web browsing" ;;
    *) echo "FOSS: software built by communities for everyone" ;;
esac
