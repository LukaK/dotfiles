#!/bin/sh

function setup_workstation5 {

    # desktop mode
    xrandr \
        --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
        --output eDP-1 --mode 2560x1600 --pos 3840x0 --rotate normal \
    || \
    # single mode
    xrandr --output eDP-1 --primary --mode 2560x1600 --rotate normal
}


function setup_workstation4 {
    xrandr \
        --output DP-2 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
        --output DP-0 --mode 3840x2160 --pos 3835x0 --rotate normal
}

HOSTNAME="$(hostname)"
case $HOSTNAME in
    "workstation4.lab")
        setup_workstation4;;
    "workstation5.lab")
        setup_workstation5;;
    *)
        ;;
esac




# # station setup for laptop 1
# xrandr \
#     --output DP-1 --off \
#     --output DP-2 --off \
#     --output DP-1-2 --off \
#     --output DP-1-3 --off \
#     --output DP-1-4 --off \
#     --output DP-1-5 --off \
#     --output DP-1-6 --off \
#     --output DP-1-7 --off \
#     --output DP-1-8 --off \
#     --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
#     --output HDMI-1-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
#     --output eDP-0 --mode 2560x1440 --pos 3840x0 --rotate normal \
#     --output eDP-2 --mode 2560x1440 --pos 3840x0 --rotate normal \
# || \
# # station setup for the laptop ( lenovo )
# xrandr \
#     --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
#     --output eDP-1 --mode 2560x1440 --pos 3840x0 --rotate normal \
# || \
# # station setup for desktop
# xrandr \
#     --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
#     --output DP-2 --mode 3840x2160 --pos 3835x0 --rotate normal \
# || \
# # station setup for laptops
# xrandr \
#     --output DP-1 --off \
#     --output DP-2 --off \
#     --output DP-1-2 --off \
#     --output DP-1-3 --off \
#     --output DP-1-4 --off \
#     --output DP-1-5 --off \
#     --output DP-1-6 --off \
#     --output DP-1-7 --off \
#     --output DP-1-8 --off \
#     --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
#     --output HDMI-1-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal
