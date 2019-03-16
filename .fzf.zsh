# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nikolay/dotfiles/fzf/bin* ]]; then
  export PATH="$PATH:/home/nikolay/dotfiles/fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/home/nikolay/dotfiles/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/nikolay/dotfiles/fzf/shell/key-bindings.zsh"

