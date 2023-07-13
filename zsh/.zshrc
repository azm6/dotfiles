export ZSH="$HOME/.oh-my-zsh"

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:/var/lib/flatpak/exports/bin:/usr/games:$PATH"

ZSH_THEME="theunraveler"

plugins=(
    git
    vi-mode
)

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias xi="sudo xbps-install -S"
alias xr="sudo xbps-remove"
alias xrr="sudo xbps-remove -R "
alias scan="sudo arp-scan -l"
alias wttr="curl https://wttr.in/skikda"
alias zen="cd ~/Videos/meditations && python meditation.py"
alias cnx="sudo nmcli connection up TP-LINK_41F804"

