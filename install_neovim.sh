#!/bin/bash

# Check if Neovim is already installed
if command -v nvim >/dev/null 2>&1 ; then
    echo "Neovim is already installed."
else
    # Install Neovim
    echo "Installing Neovim..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod +x nvim.appimage
    sudo mv nvim.appimage /usr/local/bin/nvim
fi