# dotfiles
My dot files with several configurations, alias, and functions.

Dot files shouldn't contain sensitive information, but if they contain any information that would be better to do not share as `.ssh/config` with our servers list, I use a private repo named `private-dotfiles` with that sensitive information.

All files are maintained in its repo `dotfiles` and symlinked to its respective files (the same with `private-dotfiles`).

Give execution permissions to the `install.sh` script:
`chmod +x install.sh`

Execute the script:
`./install.sh`
