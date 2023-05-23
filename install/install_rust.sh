#!/bin/bash

DST_USER=/home/grkubl

#install rust to get cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup update stable
install rust-analyzer
rustup component add rust-analyzer
