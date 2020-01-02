# Setup fzf
# ---------
if [[ ! "$PATH" == */home/luka/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/luka/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/luka/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/luka/.fzf/shell/key-bindings.zsh"
