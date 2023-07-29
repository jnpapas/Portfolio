#!/bin/bash

#0312 5AM Loss
awk -F" " '{print$1, $2, $5, $6}' 0312_Dealer_schedule.txt | grep '05:00:00 AM' >> Dealers_working_during_losses

#0312 8AM Loss
awk -F" " '{print$1, $2, $5, $6}' 0312_Dealer_schedule.txt | grep '08:00:00 AM' >> Dealers_working_during_losses

#0312 2PM Loss
awk -F" " '{print$1, $2, $5, $6}' 0312_Dealer_schedule.txt | grep '02:00:00 PM'  >> Dealers_working_during_losses

#0312 8PM Loss
awk -F" " '{print$1, $2, $5, $6}' 0312_Dealer_schedule.txt | grep '08:00:00 PM'  >> Dealers_working_during_losses

#0312 11PM Loss
awk -F" " '{print$1, $2, $5, $6}' 0312_Dealer_schedule.txt | grep '11:00:00 PM'  >> Dealers_working_during_losses
