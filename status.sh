#!/bin/bash

while :
do
    if [ "$(cat /sys/class/power_supply/BAT1/status)" = "Unknown" ]; then
        echo " Arch Linux | $(date "+%d,%b") $(date "+%H:%M") | $(cat /sys/class/power_supply/BAT1/capacity)%"
    else
        echo " Arch Linux | $(date "+%d,%b") $(date "+%H:%M") | $(cat /sys/class/power_supply/BAT1/capacity)%"
    fi
	sleep 1
done
