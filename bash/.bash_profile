# include my shared Dropbox .aliases if it exists
if [ -f /mnt/d/Dropbox/Personal/ssh/.aliases ]; then
    . /mnt/d/Dropbox/Personal/ssh/.aliases
fi

alias bat="batcat"
alias rec="asciinema rec"

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
