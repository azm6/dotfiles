# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xi='sudo xbps-install'
PS1="\[\e[31m\][\W]\[\e[m\]\[\e[33m\] \\$\[\e[m\] "
