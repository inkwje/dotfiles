#!/usr/bin/env bash

get_card=$(pactl get-default-sink)

if [[ $get_card =~ "BEHRINGER_UMC404HD" ]]
    then
    pactl set-default-sink alsa_output.usb-Dell_Dell_AC511_USB_SoundBar-00.analog-stereo
    else
    pactl set-default-sink alsa_output.usb-BEHRINGER_UMC404HD_192k-00.analog-surround-40
fi
