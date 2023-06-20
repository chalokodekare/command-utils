#!/bin/bash
 
DURATIONS_FILE=durations.temp
 
FORMULAE=( $(grep "test-COMPUTE-FORMULA-NAME" *.log | cut -d':' -f10 | cut -d' ' -f1 | sort | uniq) )
 
printf "                                                   |            |             runtime (ms)\n"
printf "                      formula                      |    count   |------------+------------+------------\n"
printf "                                                   |            |     min    |   average  |     max\n"
printf " --------------------------------------------------+------------+------------+------------+------------\n"
 
for FORMULA in "${FORMULAE[@]}"
do
 
grep "test-COMPUTE-FORMULA-NAME:$FORMULA" *.log | cut -d':' -f9 | cut -d' ' -f1 | sort -n > $DURATIONS_FILE
COUNT=$( wc -l $DURATIONS_FILE | cut -d' ' -f1 )
MIN=$( head -n1 $DURATIONS_FILE )
MAX=$( tail -n1 $DURATIONS_FILE )
 
SUM=$(awk '{ sum += $1 } END { print sum }' $DURATIONS_FILE)
AVERAGE=`expr $SUM / $COUNT`
 
printf "%50s | %10d | %10d | %10d | %10d\n" $FORMULA $COUNT $MIN $AVERAGE $MAX
 
rm $DURATIONS_FILE
done