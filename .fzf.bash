# Setup fzf
# ---------
if [[ ! "$PATH" == */home/$USER/dotfiles/fzf/bin* ]]; then
  export PATH="$PATH:/home/$USER/dotfiles/fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/home/$USER/dotfiles/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/$USER/dotfiles/fzf/shell/key-bindings.bash"

