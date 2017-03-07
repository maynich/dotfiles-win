export ZSH=~/.oh-my-zsh

ZSH_THEME="bureau"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git docker nmap ssh-agent tmux tmuxinator ubuntu)

source $ZSH/oh-my-zsh.sh

alias ll="ls -hal"
alias gh="history|grep"
alias tms="tmuxinator start"
alias zoogit="git aa && git zcm && git pm"

export EDITOR='vim'
