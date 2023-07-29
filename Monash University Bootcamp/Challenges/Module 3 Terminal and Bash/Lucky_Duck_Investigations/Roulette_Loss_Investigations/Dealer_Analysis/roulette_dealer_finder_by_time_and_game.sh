#!/bin/bash

#Prints text for Date Input
#Creates Date Variable
echo "Enter Date of Dealer Schedule (eg. 0310, 0312, and 0315)"
read Date_Var


#Prints text for Time Input
#Creates Time Variable
echo "Enter Time of Dealer Schedule (eg. 07:00:00 AM, etc.)"
read Time_Var


#Prints text for Game Input
#Creates Game Variable
echo "Enter Game Played (BlackJack, Texas-Hold-Em, Roulette)"
read Game_Var

#Enters IF command so that any BlackJack entered will execute awk and grep command.
if [ $Game_Var = BlackJack ]
then
echo "The Dealer for BlackJack on the $Date_Var @ $Time_Var" 
grep "$Time_Var" "$Date_Var"_Dealer_schedule.txt | awk -F" " '{print $1, $2, $3, $4}'
fi

#Enters IF command so that any Roulette entered will execute awk and grep command.
if [ $Game_Var = Roulette ]
then
echo "The Dealer for Roulette on the $Date_Var @ $Time_Var"
grep "$Time_Var" "$Date_Var"_Dealer_schedule.txt | awk -F" " '{print $1, $2, $5, $6}'
fi

#Enters IF command so that any Texas-Hold-Em entered will execute awk and grep command.
if [ $Game_Var = Texas-Hold-Em ]
then
echo "The Dealer for Texas-Hold-Em on the $Date_Var @ $Time_Var"
grep "$Time_Var" "$Date_Var"_Dealer_schedule.txt | awk -F" " '{print $1, $2, $7, $8}'
fi
