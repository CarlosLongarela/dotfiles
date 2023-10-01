# include .functions if it exists
if [ -f ~/.functions ]; then
    . ~/.functions
fi

# include .aliases if it exists
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

alias bat="batcat"
alias rec="asciinema rec"
