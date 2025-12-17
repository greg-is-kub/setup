#!/bin/bash
set -e

REPO_PATH=$PWD

cd ~

for files in $(ls $REPO_PATH/dotfiles/); do
    stow -d $REPO_PATH/dotfiles -t . $file
done

cd -
