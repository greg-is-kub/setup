#!/bin/bash


function cargo_install_or_update{
  if [[ which $1 2>/dev/null ]]; then
    echo "$1 already installed. Skipping."
  fi

}

# install delta : diff enhancement
echo "============================== installing delta ==============================="
cargo binstall git-delta

# install gitui
echo "============================== installing gitui ==============================="
cargo binstall gitui --locked

#install lsd
echo "=============================== installing lsd ==============================="
cargo binstall lsd

# install serpl
echo "============================== installing serpl ==============================="
cargo binstall serpl --locked

# install tokei
echo "============================== installing tokei ==============================="
cargo binstall tokei --locked

# install yazi
echo "============================== installing yazi ==============================="
cargo binstall --locked yazi-fm yazi-cli

# install zellij
echo "============================== installing zellij ==============================="
cargo binstall zellij --locked

# install zoxide
echo "============================== installing zoxide ==============================="
cargo binstall zoxide --locked
