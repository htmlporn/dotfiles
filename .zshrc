export ZSH=/home/fami/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
  zsh-syntax-highlighting
  tldr
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

alias open=xdg-open

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

