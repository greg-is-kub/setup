#!/bin/bash

echo "--------------------------------------installing python's LSP -----------------------------------"
uv tool install ruff

# choose your lsp
uv tool install python-lsp-server
uv tool install pyrefly
uv tool install ty
