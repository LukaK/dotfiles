#!/bin/sh

xrandr \
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
    --output eDP-0 --mode 2560x1440 --pos 3840x0 --rotate normal \
    --output eDP-2 --mode 2560x1440 --pos 3840x0 --rotate normal \
|| \
xrandr \
    --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
    --output DP-2 --mode 3840x2160 --pos 3835x0 --rotate normal \
    --output DP-1 --off \
    --output HDMI-0 --off \
    --output DP-3 --off \
    --output HDMI-1 --off \
    --output DP-4 --off \
    --output DP-5 --off \
|| \
xrandr \
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
    --output HDMI-1-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal
