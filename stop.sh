#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"

startTime=$(tail -1 horologium.txt | head -1)
echo "Started at $startTime"


stopTime=$(date '+%X')
echo "Stopped at $stopTime"


# Get difference between time
t2s()
{
  local T=$1;shift
  echo $((10#${T:0:2} * 3600 + 10#${T:3:2} * 60 + 10#${T:6:2}))
}

diff_time=$(( $(t2s $stopTime) - $(t2s $startTime) ))


# Show time in readable format
function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  (( $D > 0 )) && printf '%d days ' $D
  (( $H > 0 )) && printf '%d hours ' $H
  (( $M > 0 )) && printf '%d minutes ' $M
  (( $D > 0 || $H > 0 || $M > 0 )) && printf 'and '
  printf '%d seconds\n' $S
}

timeSpent=$(displaytime $diff_time)

echo $timeSpent

entry="$timeSpent"

file=~/Tempus/horologium.txt

echo $stopTime >> $file
echo $entry >> $file
