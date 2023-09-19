#!/bin/bash

echo "--------------------------------------installing python LSP -----------------------------------"
pip install python-lsp-server
echo "--------------------------------------installing code formatter -------------------------------"
pip install python-lsp-black
echo "--------------------------------------installing linter ---------------------------------------"
pip install python-lsp-ruff