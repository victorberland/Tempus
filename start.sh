#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"

startTime=$(date '+%X')
lines="------------------------------------"
echo "Started at $startTime"

file=~/Tempus/horologium.txt
date=$(date +%Y-%m-%d)

echo $lines >> $file
echo $date >> $file
echo $startTime >> $file
