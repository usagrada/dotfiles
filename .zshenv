source "$HOME/.cargo/env"
export EDITOR=code

# fzf
export FZF_DEFAULT_OPTS="--height 90% --layout=reverse --border --inline-info"
export FZF_CTRL_R_OPTS='--reverse'
export FZF_CTRL_T_OPTS='--preview "bat --color=always --style=header,grid --line-range :100 {}"'
export FZF_CTRL_T_COMMAND='fd -t f -I --exclude .git --exclude node_modules'
# export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" 2> /dev/null'