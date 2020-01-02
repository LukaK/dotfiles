# general variables
export PATH="$PATH:$HOME/bin:$HOME/.gem/ruby/2.6.0/bin"
export EDITOR=nvim
export VISUAL=nvim

# ohmyzsh env variables
export DEFAULT_USER="luka"
export ZSH_TMUX_AUTOSTART='true'

# Xorg and awesome
export XDG_VTNR=1
export XDG_RUNTIME_DIR="/run/user/1000"
export XDG_CONFIG_HOME="/home/luka/.config"
export XDG_DATA_HOME="/home/luka/.config"

# virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/WorkingDirectory"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"

# fzf (fuzzy finding)
export FZF_BASE="~/.fzf"
export FZF_DEFAULT_COMMAND='fd --type f --exclude .git --follow --hidden'
export FZF_DEFAULT_OPTS='-i --height 40% --reverse --border'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d --exclude .git --follow --hidden"
