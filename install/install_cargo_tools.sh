#!/bin/bash

# install delta : diff enhancement
echo "============================== installing delta ==============================="
cargo install git-delta

# install gitui
echo "============================== installing gitui ==============================="
cargo install gitui --locked

#install lsd 
echo "=============================== installing lsd ==============================="
cargo install lsd

# install serpl 
echo "============================== installing serpl ==============================="
cargo install serpl --locked

# install tokei 
echo "============================== installing tokei ==============================="
cargo install tokei --locked

# install yazi
echo "============================== installing yazi ==============================="
cargo install --locked yazi-fm yazi-cli

# install zellij
echo "============================== installing zellij ==============================="
cargo install zellij --locked

# install zoxide
echo "============================== installing zoxide ==============================="
cargo install zoxide --locked

