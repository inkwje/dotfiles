#!/usr/bin/env bash

choice=$(printf "Lock\nReboot\nShutdown" | rofi -dmenu)

if [[ $choice == "Lock" ]];then
    bash ~/.config/system_scripts/wayland_session_lock
elif [[ $choice == "Reboot" ]];then
	systemctl reboot
elif [[ $choice == "Shutdown" ]];then
    systemctl poweroff
fi
