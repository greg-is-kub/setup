#!/bin/bash
# set -e

DST_USER=/home/grkubl

apt-get update
chmod +x scripts/thefuck.sh
./scripts/thefuck.sh


# install zoxide
echo "============================== installing zoxide ==============================="
apt-get install -y zoxide

#install bat
echo "============================== installing bat ==============================="
apt install -y bat

#install ripgrep
echo "============================== installing ripgrep ==============================="
apt-get install ripgrep

# install starship
echo "============================== starship ==============================="
curl -sS https://starship.rs/install.sh | sh
