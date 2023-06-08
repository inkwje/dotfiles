#!/usr/bin/env bash

get_card=$(pactl get-default-sink)

if [[ $get_card =~ "BEHRINGER_UMC404HD" ]]
    then
    pactl set-default-sink 1014
    else
    pactl set-default-sink 47 
fi
