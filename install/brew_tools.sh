#! /bin/bash

set -e

#install glow
echo "============================== installing glow ==============================="
brew install glow

#install gitui
echo "============================== installing gitui ==============================="
brew install gitui

#install fzf
echo "============================== installing fzf ==============================="
brew install fzf

# install carapace
echo "============================== installing carapace ==============================="
brew tap rsteube/homebrew-tap
brew install rsteube/tap/carapace
