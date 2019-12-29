# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="[\u@\h] \n \w \\$ "

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

