# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir="mkdir --parents"
alias ll="ls -l -t --almost-all --human-readable --reverse"
alias lr="ls --recursive"
alias cls="clear ; ll"
