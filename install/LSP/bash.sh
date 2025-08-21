#!/bin/bash

echo "--------------------------------------installing bash language server------------------------------"
sudo npm i -g bash-language-server

echo "--------------------------------------installing bash code formatter-------------------------------"
sudo GOBIN=/usr/local/bin go install mvdan.cc/sh/v3/cmd/shfmt@latest
