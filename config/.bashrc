# .bashrc

export PATH=/home/bin:$PATH

PS1="\e[91m [\u@\h] \e[93m \w \e[0m \n \\$ "

set -o vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir="mkdir --parents"
alias ll="ls -l -t -c --almost-all --human-readable --reverse"
alias lr="ls --recursive"
alias cls="clear ; ll"

export CSCOPE_EDITOR=vim

source /home/bin/z.sh

alias cat="/home/bin/ccat --color-code=Keyword=red --color-code=Plaintext=green --color-code=Punctuation=yellow"

alias gcs="gtags-cscope"

alias vf='vim $(fzf)'

alias h="cheat"
export CHEAT_CONFIG_PATH="/home/cheatsheets/config.yaml"

alias cgcs="rm -f ./.gutentags ./GTAGS ./GRTAGS ./GPATH"
