#!/bin/bash

# for f in /home/luka/.tmux/sessions/*
# do
#         tmux source-file $f 2> /dev/null
# done
tmux source-file /home/luka/.tmux/sessions/development.conf
tmux source-file /home/luka/.tmux/sessions/general.conf
