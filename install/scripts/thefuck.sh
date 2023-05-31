
#!/bin/bash

set -e


USER=/home/grkubl

echo "======================================installing thefuck======================================"
apt update
apt install -y python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
echo "=================================thefuck successfully installed================================="
