#!/bin/bash
set -e

# install LSP
echo "============================== installing clangd-20 ==============================="
[[ -e "./llvm.sh" ]] || wget https://apt.llvm.org/llvm.sh
chmod +x ./llvm.sh
sudo ./llvm.sh
apt install clangd-20
apt install clang-format-20

# compiledb
uv tool install compiledb
