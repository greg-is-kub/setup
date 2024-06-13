#!/bin/bash

echo "--------------------------------------installing bash language server------------------------------"
sudo apt update
sudo apt install npm
npm i -g bash-language-server

echo "--------------------------------------installing bash code formatter-------------------------------"
sudo apt-get -y install golang-go 
go install mvdan.cc/sh/v3/cmd/shfmt@latest
