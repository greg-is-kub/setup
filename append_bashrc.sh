

################################################# 
# This part of .bashrc was automaticallly added 
# by append_bashrc.sh from
# https://github.com/greg-is-kub/setup

#Helix set as default editor
# ASSUMING HELIX HAS BEEN BUILT FROM SOURCE OR INSTALLED 
export EDITOR=$HOME/.cargo/bin/hx

## append to $PATH
# RUST & CARGO
source "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
# GO
export PATH=$PATH:/usr/local/go/bin
# Setup Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# setup uv
source $HOME/.local/share/../bin/env

# bash completion for custom commands
if [ -d "$HOME/.local/share/bash-completion" ]; then
    export XDG_DATA_DIRS="$HOME/.local/share:$XDG_DATA_DIRS"
    source $HOME/.local/share/bash-completion/completions/*
fi

# ALIASES
## LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# BAT
alias bat='bat -p'
## PYTHON
alias py="python"
# bear
alias bear='bear --output ./build/compile_commands.json'

## setup shell completion
eval "$(starship init bash)"
eval "$(uv generate-shell-completion bash)"
eval "$(ty generate-shell-completion bash)"
eval "$(zellij setup --generate-completion bash)"
eval "$(fzf --bash)"

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)

eval "$(zoxide init bash)"
