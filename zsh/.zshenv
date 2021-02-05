# general variables
export EDITOR=nvim
export VISUAL=nvim

# ruby configuration
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# ohmyzsh env variables
export DEFAULT_USER="luka"
#export ZSH_TMUX_AUTOSTART='true'

# Xorg and awesome
#export XDG_VTNR=1
#export XDG_RUNTIME_DIR="/run/user/1000"
#export XDG_CONFIG_HOME="/home/luka/.config"
#export XDG_DATA_HOME="/home/luka/.config"
#export XDG_CURRENT_DESKTOP="i3"

# virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Workspace"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"

# fzf (fuzzy finding)
# export FZF_BASE="$HOME/.config/fzf"
export FZF_DEFAULT_COMMAND='fd --type f --exclude .git --follow --hidden'
export FZF_DEFAULT_OPTS='-i --height 40% --reverse --border'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d --exclude .git --follow --hidden"

# glue environment with spark
export PATH="$HOME/Libs/apache-maven-3.6.0/bin:$PATH"
export SPARK_HOME="$HOME/Libs/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8"
export PATH="$HOME/Libs/aws-glue-libs/bin:$PATH"

# vulkan configuration
#export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.i686.json:/usr/share/vulkan/icd.d/intel_icd.x86_64.json

# pyenv env variables
export PYENV_ROOT="$HOME/.pyenv"
