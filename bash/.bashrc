# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xi='sudo xbps-install'
PS1="\[\e[31m\][\W]\[\e[m\]\[\e[33m\] \\$\[\e[m\] "
source "$HOME/.cargo/env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"

