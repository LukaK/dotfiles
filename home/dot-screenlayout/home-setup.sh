#!/bin/sh

function setup_workstation6 {

    # desktop mode
    xrandr \
        --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
        --output eDP-1 --mode 1920x1200 --pos 3840x0 --rotate normal \
    || \
    # single mode
    xrandr --output eDP-1 --primary --mode 1920x1200 --rotate normal
}

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


function setup_workstation3 {

    # desktop mode
    xrandr \
        --output HDMI-1-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
        --output eDP-1 --mode 2560x1440 --pos 3840x0 --rotate normal \
    || \
    # single mode
    xrandr --output eDP-1 --primary --mode 2560x1600 --rotate normal
}

function setup_laptop1 {

    # desktop mode
    xrandr \
        --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
        --output DP-2 --mode 3840x2160 --pos 3840x0 --rotate normal \
        --output eDP-1 --off \
    || \
    # single mode
    xrandr --output eDP-1 --primary --mode 2560x1600 --rotate normal
}


HOSTNAME="$(hostname)"
case $HOSTNAME in
    "workstation3.lab")
        setup_workstation3;;
    "workstation4.lab")
        setup_workstation4;;
    "workstation5.lab")
        setup_workstation5;;
    "workstation6.lab")
        setup_workstation6;;
    "laptop1.lab")
        setup_laptop1;;
    *)
        ;;
esac
