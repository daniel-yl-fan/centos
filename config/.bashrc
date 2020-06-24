HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL=ignorespace:ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export PATH=$PATH:/
CDPATH=.:~
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/

# PS1="\[\033[36m\]\`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{\1} /'\`\e[91m [\u@\h] \e[93m \w \e[0m \n \\$ "
PS1="\e[36m \`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{ \1 } /'\` \e[31m \u@\h \e[93m ( \`git branch --no-color --list 2> /dev/null | sed --regexp-extended 's/\*//g' | tr '\n' ' '\` ) \e[32m ( \w ) \e[0m \n $ "

shopt -s cdspell
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

LS_COLORS="$LS_COLORS:di=1;94"
alias ll="ls -l -t -c --almost-all --human-readable --reverse"

alias mkdir="mkdir --parents"

alias c="reset"

EDITOR=vim
VISUAL=vim
export CSCOPE_EDITOR=vim
set -o vi

export PAGER="less -R"
LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
LESS=' -R '
alias l="less -r"

alias t='trash'

source /usr/local/bin/z.sh

alias cat="~/local/bin/ccat --color-code=Keyword=red --color-code=Plaintext=green --color-code=Punctuation=yellow --color-code=Decimal=turquoise"

CHEAT_CONFIG_PATH="~/cheatsheets/config.yaml"
alias h="/usr/local/bin/cheat"

FZF_DEFAULT_COMMAND="ag --hidden --ignore .git --files-with-matches --filename-pattern ."
FZF_DEFAULT_OPTS="--border"
