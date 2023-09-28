# include my shared Dropbox .aliases if it exists
if [ -f /mnt/d/Dropbox/Personal/ssh/.aliases ]; then
    . /mnt/d/Dropbox/Personal/ssh/.aliases
fi

alias bat="batcat"
alias rec="asciinema rec"
