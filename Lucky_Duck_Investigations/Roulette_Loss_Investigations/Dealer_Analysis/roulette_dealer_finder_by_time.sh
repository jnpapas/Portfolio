#!/bin/bash
echo "Found Results for $1 @ $2: "

# $1 = Filename Modifier #$2 = DateInput (EG. 0310) #$3 = AM or PM
#AWK = Printing  Hour, Time, Roulette Dealer FNAME, and Roulette Dealer LAST.
grep "$2" $1_Dealer_schedule.txt | awk -F" " '{print $1, $2, $5, $6}'

