# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nikolay/.soft/fzf/bin* ]]; then
  export PATH="$PATH:/home/nikolay/.soft/fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/home/nikolay/.soft/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/nikolay/.soft/fzf/shell/key-bindings.bash"

