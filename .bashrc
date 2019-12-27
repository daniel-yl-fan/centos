# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export TERM=screen-256color

HISTSIZE=9999999
HISTCONTROL=ignoredups

export EDITOR=vim
set -o vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir="mkdir -p"
alias ll="ls -l -t -A -h -r"
alias lr="ls -R"
alias l="ls -l -A -h"
alias cls="clear ; ll"


