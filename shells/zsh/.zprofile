#!/bin/zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# include .functions if it exists
if [ -f ~/.functions ]; then
    . ~/.functions
fi

# include .aliases if it exists
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# include .aliases_private if it exists
if [ -f ~/.aliases_private ]; then
    . ~/.aliases_private
fi

alias theme-1="omz theme use fino-time"
alias theme-2="omz theme use agnoster"
alias theme-3="omz theme use robbyrussell"
alias theme-list="omz theme list"

echo -e "\e[32mPara los temas usar los alias \e[36mtheme-\e[0m"
echo
