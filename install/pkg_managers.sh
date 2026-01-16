#!/bin/bash
set -x

function install_if_not_in_path {
  if [[ which $1 2>/dev/null ]]; then
    echo "$1 already installed. Skipping."
  fi
  case "$1" in
  "brew" )
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> $HOME/.bashrc
    echo "# Setup Brew" >> $HOME/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  ;;
  "curl" )
    sudo apt-get update
    sudo apt-get install curl
  
  "go" )
    sudo apt-get -y install golang-go 
    ;;
  "npm" )
    sudo apt-get install npm
    ;;
  "rust" | "rustup" | "cargo")
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
    rustup update stable
    install rust-analyzer
    rustup component add rust-analyzer
  ;;
  "uv" )
    brew install uv
  ;;
  * )
    echo "Invalid argument. Exiting."
    exit 1
  esac
}

install_if_not_in_path curl # pre reqeuisite
install_if_not_in_path brew
install_if_not_in_path uv
install_if_not_in_path cargo
install_if_not_in_path npm
install_if_not_in_path go
