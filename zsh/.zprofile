export NNN_BMS="v:~/Videos;d:~/Downloads/Torrents"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi

