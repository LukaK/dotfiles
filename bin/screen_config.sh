#!/usr/bin/bash

if [[ $(xrandr | grep "HDMI-1 connected") ]]
then
        xrandr --auto --output HDMI-1 --mode 1920x1080 --primary --output eDP-2-3 --off
        exit 0
fi

if [[ $(xrandr | grep "DP-1-3 connected") ]]
then
        xrandr --auto --output eDP-1 --off --output DP-1-3 --mode 1920x1080 --primary
        exit 0
fi

exit 1
