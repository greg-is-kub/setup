#!/bin/bash
set -e

# pre requisite
sudo apt install curl

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> $HOME/.bashrc
echo "# Setup Brew" >> $HOME/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#install rust to get cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup update stable
install rust-analyzer
rustup component add rust-analyzer
