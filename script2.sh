#!/bin/bash
# Script 2: MySQL Package Inspector

PACKAGE="mysql-server"

echo "Checking package: $PACKAGE"
echo "----------------------------------"

# Check if installed
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -l | grep "$PACKAGE"

else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------"

# Case statement (important for marks)
case $PACKAGE in
    mysql-server)
        echo "MySQL: A popular open-source database used in web applications."
        ;;
    apache2)
        echo "Apache: Web server used to host websites."
        ;;
    *)
        echo "Unknown package"
        ;;
esac