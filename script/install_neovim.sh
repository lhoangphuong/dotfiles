#!/bin/bash

# Check if Neovim is already installed
if command -v nvim >/dev/null 2>&1; then
    echo "Neovim is already installed."
else
    # Install Neovim
    echo "Installing Neovim..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod +x nvim.appimage
    sudo mv nvim.appimage /usr/local/bin/nvim
fi

# Check if Lua is already installed
if command -v lua >/dev/null 2>&1; then
    echo "Lua is already installed."
else
    # Install Lua
    echo "Installing Lua..."
    curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
    tar zxpf lua-5.4.4.tar.gz -q
    cd lua-5.4.4

    # Configure and install Lua
    make linux
    sudo make install

    # Add Lua to PATH
    echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
    source ~/.bashrc

    # Verify installation
    lua -v
fi
