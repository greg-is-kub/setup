#!/bin/bash

set -e

REPO_PATH=$PWD

cd ~

DOTFILES_PATH=$REPO_PATH/dotfiles/

echo "stowing dotfiles from $DOTFILES_PATH : "
for file in $(ls $DOTFILES_PATH); do
    echo " - $file"
    stow -d $DOTFILES_PATH -t . $file
done

cd -

echo "Done!"
