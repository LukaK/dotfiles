#!/bin/bash
start_tmux(){
    if [[ -z "$TMUX" ]]; then
        # get id of detached session which is not starting session
        ID="$( tmux ls | grep -vm1 attached | grep -vm1 root | cut -d: -f1 )"
        if [[ -z "$ID" ]] ;then # if not available create a new one
            tmux new-session
        else
            tmux attach-session -t "$ID" # if available attach to it
        fi
    fi
}
start_tmux
