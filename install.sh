#!/bin/bash

# Create symbolic links for .aliases
ln -sf ~/shells/.aliases ~/.aliases

# Create symbolic links for .functions
ln -sf ~/shells/.functions ~/.functions

echo "Symlinks created successfully."

# Install bat
sudo apt-get install bat
echo "bat program installed successfully."

# Install mc
sudo apt-get install mc
echo "mc program installed successfully."

# Install neovim
sudo apt-get install neovim
echo "neovim program installed successfully."
