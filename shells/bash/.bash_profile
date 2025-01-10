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

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
