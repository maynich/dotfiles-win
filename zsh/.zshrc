export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

# SSH Agent identities to load (Must be before plugin load)
zstyle :omz:plugins:ssh-agent identities id_github

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git docker ssh-agent tmux ubuntu wakeonlan)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

alias la="ls -hal"
alias gh="history|grep"
alias zoogit="git add -A && git commit -m "zoo" && git push origin master"

# Editor of choice
export EDITOR='vim'

# Autocomplete subdirectories (. ..) and dotfiles
zstyle ':completion:*' special-dirs true
setopt globdots

