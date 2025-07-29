#!/bin/bash
# set -e

DST_USER=/home/grkubl

apt-get update

#install bat
echo "============================== installing bat ==============================="
apt install -y bat

#install ripgrep
echo "============================== installing ripgrep ==============================="
apt-get install ripgrep
