#!/usr/bin/env bash

fmt="%-4s lock screen
%-4s reboot the system
%-4s shutdown the system"

choose=$(printf "$fmt"    | rofi -dmenu)

if [[ $choose =~ "shutdown" ]]; then
    shutdown now
elif [[ $choose =~ "reboot" ]]; then
    shutdown -r now
elif [[ $choose =~ "lock" ]]; then
    swaylock
fi
