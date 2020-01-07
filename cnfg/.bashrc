# .bashrc

PS1="\e[91m [\u@\h] \e[93m \w \e[0m \n \\$ "

set -o vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir="mkdir --parents"
alias ll="ls -l -t -c --almost-all --human-readable --reverse"
alias lr="ls --recursive"
alias cls="clear ; ll"

alias h="cheat"

alias gcs="gtags-cscope"

alias vf='vim $(fzf)'

#export CHEAT_CONFIG_PATH="/root/cheat/config.yaml"
export CHEAT_CONFIG_PATH="/media/sf_Documents/cheat/config.yaml"

source /usr/bin/z.sh

source /usr/local/bin/wd.sh

