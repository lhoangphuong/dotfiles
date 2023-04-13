#!/bin/bash

# Check if Neovim is already installed
if command -v nvim >/dev/null 2>&1 ; then
    echo "Neovim is already installed."
else
    # Install Neovim
    echo "Installing Neovim..."
    sudo apt-get update -y
    sudo apt-get install neovim -y
fi
