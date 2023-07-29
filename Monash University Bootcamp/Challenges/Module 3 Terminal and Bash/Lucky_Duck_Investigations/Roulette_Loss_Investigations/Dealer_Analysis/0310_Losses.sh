#!/bin/bash

#0310 5AM Loss
awk -F" " '{print $1, $2, $5,$6}' 0310_Dealer_schedule.txt | grep '05:00:00 AM' >> Dealers_working_during_losses

#0310 8AM Loss
awk -F" " '{print $1, $2, $5,$6}' 0310_Dealer_schedule.txt | grep '08:00:00 AM' >> Dealers_working_during_losses

#0310 2PM Loss
awk -F" " '{print $1, $2, $5,$6}' 0310_Dealer_schedule.txt | grep '02:00:00 PM' >> Dealers_working_during_losses

#0310 8PM Loss
awk -F" " '{print$1, $2, $5, $6}' 0310_Dealer_schedule.txt | grep '08:00:00 PM' >> Dealers_working_during_losses

#0310 8PM Loss
awk -F" " '{print$1, $2, $5, $6}' 0310_Dealer_schedule.txt | grep '11:00:00 PM' >> Dealers_working_during_losses



