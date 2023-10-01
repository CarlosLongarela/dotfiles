# https://www.zerotohero.dev/zshell-startup-files/
# Here’s the order these profile files are processed, without getting into too much detail:
# .zshenv → .zprofile → .zshrc → .zlogin → .zlogout

plugins=(git z zsh-autosuggestions) # Load Oh My ZSH plugins

source $ZSH/oh-my-zsh.sh

theme-1 # Change Oh My ZSH Theme
h       # Go to Linux home directory
