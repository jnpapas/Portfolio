#!/bin/bash

echo "BlackJack Results for $1 @ $2: "

# $1 = Filename Modifier #$2 = DateInput (EG. 0310) #$3 = AM or PM
#AWK = Printing  Hour, Time, Roulette Dealer FNAME, and Roulette Dealer LAST.
grep "$2" $1_Dealer_schedule.txt | awk '{print $1, $2, $3, $4}'

echo ""

echo "Roulette  Results for $1 @ $2: "

# $1 = Filename Modifier #$2 = DateInput (EG. 0310) #$3 = AM or PM
#AWK = Printing  Hour, Time, Roulette Dealer FNAME, and Roulette Dealer LAST.
grep "$2" $1_Dealer_schedule.txt | awk '{print $1, $2, $5, $6}'

echo ""

echo "Texas Hold EM Results for $1 @ $2: "

# $1 = Filename Modifier #$2 = DateInput (EG. 0310) #$3 = AM or PM
#AWK = Printing  Hour, Time, Roulette Dealer FNAME, and Roulette Dealer LAST.
grep "$2" $1_Dealer_schedule.txt | awk '{print $1, $2, $7, $8}'
