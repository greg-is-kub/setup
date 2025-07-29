#!/bin/bash
# set -e

DST_USER=$HOME

apt-get update
chmod +x scripts/thefuck.sh

#install bat
echo "============================== installing bat ==============================="
apt install -y bat

#install ripgrep
echo "============================== installing ripgrep ==============================="
apt-get install ripgrep

#install fzf
echo "============================== installing fzf ==============================="
apt-get install fzf
