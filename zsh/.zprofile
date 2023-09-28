#!/bin/zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# include my shared Dropbox .aliases if it exists
if [ -f /mnt/d/Dropbox/Personal/ssh/.aliases ]; then
    . /mnt/d/Dropbox/Personal/ssh/.aliases
fi

alias bat="batcat"
alias rec="asciinema rec"

alias theme-1="omz theme use fino-time"
alias theme-2="omz theme use agnoster"
alias theme-3="omz theme use robbyrussell"
alias theme-list="omz theme list"

echo -e "\e[32mPara los temas usar los alias \e[36mtheme-\e[0m"
echo
