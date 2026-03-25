#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer a few questions to generate your manifesto"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "----------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE
echo "I use $TOOL in my daily work." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "In future, I would like to build $BUILD and share it with everyone." >> $FILE
echo "----------------------------------" >> $FILE

echo ""
echo "Manifesto saved in $FILE"
cat $FILE