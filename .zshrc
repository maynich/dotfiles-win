# Export Docker home if on WSL
grep Microsoft /proc/version >> /dev/null && export DOCKER_HOST='tcp://0.0.0.0:2375'

ANTIGEN=$HOME/.antigen/

if [ ! -f $ANTIGEN/antigen.zsh ]; then
  git clone https://github.com/zsh-users/antigen.git $ANTIGEN
fi

compaudit
if [[ $? != 0 ]]; then        
    compaudit | xargs chmod go-w
fi                            

# SSH Agent identities to load (Must be before plugin load)
zstyle :omz:plugins:ssh-agent identities id_github id_gitlab

ZSH_TMUX_AUTOSTART=true

alias mux="tmuxinator"
alias la="ls -hal"
alias gh="history|grep"
alias zoogit="git add -A && git commit -m "zoo" && git push origin master"
alias pandoc="pandoc +RTS -V0 -RTS"

# Editor of choice
export EDITOR='vim'

# Autocomplete subdirectories (. ..) and dotfiles
zstyle ':completion:*' special-dirs true
setopt globdots

if [[ -f $ANTIGEN/antigen.zsh ]]; then
  source $ANTIGEN/antigen.zsh
  antigen selfupdate
  antigen use oh-my-zsh
  antigen bundle git
  antigen bundle docker
  antigen bundle ssh-agent
  antigen bundle tmux
  antigen bundle tmuxinator
  antigen bundle ubuntu
  antigen bundle wakeonlan
  antigen bundle command-not-found
  antigen bundle common-aliases
  antigen bundle nmap
  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-autosuggestions

  antigen theme ergenekonyigit/lambda-gitster

  antigen apply

fi

cd ~

set_proxy() {
    if [ -z "$1" ]
        then {
            echo "usage set_proxy <proxy_name>, maybe franpac?"
            return
        }
        else
            PROXY=$1
    fi
    PASSWORD_HEX=""
    # Read user
    echo -n User:
    read USERNAME

    # Read Password
    echo -n Password:
    read -s PASSWORD
    echo

    # Change Password to Hex to solve any special characters
    for ((i=0; i<${#PASSWORD}; i++))
    do
     PASSWORD_HEX=$PASSWORD_HEX$(printf "%%%02x" \'${PASSWORD:$i:1});
    done
    export http_proxy="http://$USERNAME:$PASSWORD_HEX@$PROXY"
    USERNAME=""
    PASSWORD=""
    PASSWORD_HEX=""
}
