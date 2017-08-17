export ZSH=~/.oh-my-zsh

ZSH_THEME="bureau"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git docker ssh-agent tmux ubuntu)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

alias la="ls -hal"
alias gh="history|grep"
alias zoogit="git aa && git zcm && git pm"

export EDITOR='vim'
