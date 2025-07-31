#!/bin/bash

# install LSP
echo "WARNING : requires sudo"
echo "============================== installing clangd-20 ==============================="
apt-get install -y clangd-12
wget https://apt.llvm.org/llvm.sh
chmod u+x llvm.sh
./llvm.sh 20 # require sudo
apt install clangd-20
apt install clang-format-20

# Bear
apt-get install -y bear
