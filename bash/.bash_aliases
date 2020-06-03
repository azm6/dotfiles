alias scan='sudo arp-scan -l'
alias yta='youtube-dl -f bestaudio -o "%(title)s.%(ext)s" '
alias ban='toilet -F gay -f mono12.tlf'
alias weather='curl wttr.in/skikda'
alias ncp='ncmpcpp'
alias mpctl='mpc --host=127.0.0.1 --port=6601'

if [ -x /usr/bin/dircolors ]; then

     test -r ~/.dircolors && eval "$(dircolors -b ~/.dirc    olors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
