#!/bin/bash

echo -e "cpu\tmem\tread" > monitor.log

# prints cpu stats every second in the file monitor.log
# use the file as input in the jupyter notebook to plot data 

while true
do
    cpu=$(top -bn1 | grep $1 | awk '{print $9 }')
    #mem=$(top -bn1 | grep $1 | awk '{print $10 }')
    #kb_read=$(iostat | grep nvm | awk '{ print $5 }')
    echo -e "$cpu" >> monitor.log
    sleep 1
done

