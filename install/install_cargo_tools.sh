#!/bin/bash

# install delta : diff enhancement
echo "============================== installing delta ==============================="
cargo install git-delta

#install lsd 
echo "=============================== installing lsd ==============================="
cargo install lsd

# install gitui
echo "============================== installing gitui ==============================="
cargo install gitui --locked

# install tokei 
echo "============================== installing tokei ==============================="
cargo install tokei --locked

# install zoxide
echo "============================== installing zoxide ==============================="
cargo install zoxide --locked
