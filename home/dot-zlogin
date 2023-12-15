#
# ~/.bash_profile
#

# [[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 && -z $TMUX ]]; then
    # check if withing tmux
    if [ -z $TMUX ]; then
        exec startx
    fi
fi
