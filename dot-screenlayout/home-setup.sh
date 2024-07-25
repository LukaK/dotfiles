#!/bin/sh
xrandr \
    --output eDP-1 --off \
    --output eDP-2 --off \
    --output DP-1 --off \
    --output DP-2 --off \
    --output DP-1-2 --off \
    --output DP-1-3 --off \
    --output DP-1-4 --off \
    --output DP-1-5 --off \
    --output DP-1-6 --off \
    --output DP-1-7 --off \
    --output DP-1-8 --off \
    --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
    --output HDMI-1-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
# xrandr \
#     --output HDMI-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal --rate 144.00
