#!/bin/bash
# Script 3: Disk and Permission Auditor (Git-focused)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Checking Git configuration files..."

# System-level config
SYS_CONFIG="/etc/gitconfig"

if [ -f "$SYS_CONFIG" ]; then
    PERMS=$(ls -l $SYS_CONFIG | awk '{print $1, $3, $4}')
    echo "System Git config: $SYS_CONFIG => Permissions: $PERMS"
else
    echo "System Git config not found"
fi

# User-level config
USER_CONFIG="$HOME/.gitconfig"

if [ -f "$USER_CONFIG" ]; then
    PERMS=$(ls -l $USER_CONFIG | awk '{print $1, $3, $4}')
    echo "User Git config: $USER_CONFIG => Permissions: $PERMS"
else
    echo "User Git config not found"
fi
