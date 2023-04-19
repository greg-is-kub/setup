#!/bin/bash

DST_USER=/home/grkubl

#install rust to get cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup update stable

# install rust-analyzer
# rustup component add rust-analyzer

# helix
cd $DST_USER/workspace/install/helix/helix
cargo install --locked --path helix-term
ln -s $PWD/runtime ~/.config/helix/runtime

# install delta
echo "============================== installing delta ==============================="
cargo install git-delta

#install lsd
echo "=============================== installing lsd ==============================="
cargo install lsd
