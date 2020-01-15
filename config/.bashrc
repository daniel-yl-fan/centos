# .bashrc

export PATH=~/local/bin:$PATH

PS1="\e[91m [\u@\h] \e[93m \w \e[0m \n \\$ "

set -o vi

alias mkdir="mkdir --parents"
alias ll="ls -l -t -c --almost-all --human-readable --reverse"
alias lr="ls --recursive"
alias cls="clear ; ll"

export CSCOPE_EDITOR=vim

export CHEAT_CONFIG_PATH="~/local/cheatsheets/config.yaml"
alias h="~/local/bin/cheat"

source ~/local/z/z.sh

alias cat="~/local/bin/ccat --color-code=Keyword=red --color-code=Plaintext=green --color-code=Punctuation=yellow --color-code=Decimal=turquoise"

alias vf='vim $(fzf)'

alias gcs="gtags-cscope"
