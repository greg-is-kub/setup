#!/bin/bash
# set -e

DST_USER=/home/grkubl

apt-get update
apt-get install -y nano
chmod +x scripts/thefuck.sh
./scripts/thefuck.sh

# install LSP
apt-get install -y clangd-12

# install zoxide
apt-get install -y zoxide

# starship
curl -sS https://starship.rs/install.sh | sh

# set +e