#!/bin/bash

# Create symbolic links for .aliases
ln -sf ~/dotfiles/shells/.aliases ~/.aliases

# Create symbolic links for .functions
ln -sf ~/dotfiles/shells/.functions ~/.functions

if [[ -n "$ZSH_VERSION" ]]; then
    echo -e "\nZSH detected, linking startup profiles"
    ln -sf ~/dotfiles/shells/zsh/.zlogin ~/.zlogin
    ln -sf ~/dotfiles/shells/zsh/.zprofile ~/.zprofile
elif [[ -n "$BASH_VERSION" ]]; then
    echo -e "\nBash detected, linking startup profiles"
    ln -sf ~/dotfiles/shells/bash/.bash_profile ~/.bash_profile
fi

echo "Symlinks created successfully."

# Install bat
sudo apt-get install bat
echo "bat program installed successfully."

# Install mc
sudo apt-get install mc
echo "mc program installed successfully."

# Install neovim
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim
apt-cache policy neovim
echo "neovim program installed successfully."

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
echo "neovim configuration lazyvim installed successfully."
