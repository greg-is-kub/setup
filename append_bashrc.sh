

################################################# 
# This part of .bashrc was automaticallly added 
# by append_bashrc.sh from
# https://github.com/greg-is-kub/setup

#Helix set as default editor
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

## setup tools
# starship prompt
eval "$(starship init bash)"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# carapace completer
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)

# zoxide
eval "$(zoxide init bash)"
