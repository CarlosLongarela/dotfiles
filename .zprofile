# Oh My ZSH Theme. This will be on .zshrc
# We will use the final alias to change the theme
# ZSH_THEME="agnoster"


# include my shared Dropbox .aliases if it exists
if [ -f /mnt/d/Dropbox/Personal/ssh/.aliases ]; then
    . /mnt/d/Dropbox/Personal/ssh/.aliases
fi

alias bat="batcat"
alias rec="asciinema rec"
alias ztheme='(){ export ZSH_THEME="$@" && source /home/carlos/.oh-my-zsh/oh-my-zsh.sh }'

ztheme agnoster
