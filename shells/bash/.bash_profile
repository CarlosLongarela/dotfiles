### Added by Carlos Longarela dotfiles system
### https://github.com/CarlosLongarela/dotfiles
###
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

if [ -f ~/.cache/oh-my-posh/themes/montys.omp.json ]; then
    eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/montys.omp.json)"
    . "/root/.acme.sh/acme.sh.env"
fi

#alias rec="asciinema rec"
