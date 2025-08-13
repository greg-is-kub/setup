#!/bin/bash

echo "--------------------------------------installing bash language server------------------------------"
npm i -g bash-language-server

echo "--------------------------------------installing bash code formatter-------------------------------"
go install mvdan.cc/sh/v3/cmd/shfmt@latest
