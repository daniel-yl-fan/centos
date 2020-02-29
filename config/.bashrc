# .bashrc

export LS_COLORS="$LS_COLORS:di=1;94"

export PATH=$PATH:~/local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/local/lib

PS1="\e[91m [\u@\h] \e[93m \w \e[0m \n \\$ "

set -o vi

alias mkdir="mkdir --parents"
alias ll="ls -l -t -c --almost-all --human-readable --reverse"
alias lr="ls --recursive"
alias cls="clear ; ll"

export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git --files-with-matches --filename-pattern ."
export FZF_DEFAULT_OPTS="--border"

export CSCOPE_EDITOR=vim

export CHEAT_CONFIG_PATH="~/local/cheatsheets/config.yaml"
alias h="/home/dafan/local/bin/cheat"

source ~/local/z/z.sh

alias cat="/home/dafan/local/bin/ccat --color-code=Keyword=red --color-code=Plaintext=green --color-code=Punctuation=yellow --color-code=Decimal=turquoise"

alias vf='vim $(fzf)'

alias gcs="gtags-cscope -d"
