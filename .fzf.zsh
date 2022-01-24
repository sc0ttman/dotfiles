# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/scott/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/scott/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/scott/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/scott/.fzf/shell/key-bindings.zsh"
