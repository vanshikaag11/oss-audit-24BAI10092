#!/bin/bash
# Script 3: Disk and Permission Auditor

echo "Directory Audit Report"
echo "--------------------------"

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERMISSION=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMISSION | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "--------------------------"

# MySQL config check (custom touch for marks)
if [ -d "/etc/mysql" ]; then
    echo "MySQL config directory exists"
    ls -ld /etc/mysql
else
    echo "MySQL config directory not found"
fi