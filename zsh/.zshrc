export ZSH="/home/void/.oh-my-zsh"

ZSH_THEME="theunraveler"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias xrr="sudo xbps-remove -R "
alias scan="sudo arp-scan -l"
alias wttr="curl https://wttr.in/skikda"

export PATH=/home/void/.local/bin:$PATH
