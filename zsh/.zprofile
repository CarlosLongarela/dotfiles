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

alias github-download='function _github-download() { \
    if [ -z "$1" ]; then \
        echo "ERROR: Debes proporcionar una URL o ruta de archivo como parámetro."; \
        return 1; \
    fi; \
    local url="$1"; \
    if [[ $url != http* ]]; then \
        url="https://raw.githubusercontent.com/$url"; \
    fi; \
    local filename="${url##*/}"; \
    curl -LJO "$url" && mv "$filename" "$PWD"; \
}; _github-download'

echo -e "\e[32mPara los temas usar los alias \e[36mtheme-\e[0m"
echo
