export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
	vi-mode
	frontend-search
	history-substring-search
)

source $ZSH/oh-my-zsh.sh

if [ -f /usr/bin/grc ]; then
 alias gcc="grc --colour=auto gcc"
 alias irclog="grc --colour=auto irclog"
 alias log="grc --colour=auto log"
 alias netstat="grc --colour=auto netstat"
 alias ping="grc --colour=auto ping"
 alias proftpd="grc --colour=auto proftpd"
 alias traceroute="grc --colour=auto traceroute"
fi

alias cat=bat
alias :q=exit
alias tmux=tmux -u
alias git-clean="git checkout master && git pull origin master && git branch | grep -v "master" | xargs git branch -D"

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads 
