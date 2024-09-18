# zoxide, upgraded cd
eval "$(zoxide init bash)"
# thefuck
eval $(thefuck --alias FUCK)

# starship prompt
eval "$(starship init bash)"

#Helix set as editor
export EDITOR=/home/greg/.cargo/bin/hx

# FZF

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

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

## append to $PATH
# RUST & CARGO
source "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
# GO
export PATH=$PATH:/usr/local/go/bin


