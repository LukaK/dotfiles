#!/usr/bin/bash

if [[ $(xrandr | grep "HDMI-1 connected") ]]
then
        xrandr --auto --output HDMI-1 --mode 1920x1080 && xrandr --output eDP-1 --off
fi
