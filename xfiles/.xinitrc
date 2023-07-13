#!/bin/bash

xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources
# set pulseaudio output device to sink 0 as default
pactl set-default-sink 0
# mpd &
#source .zshrc
redshift -l 0:35 &
export SXHKD_SHELL='/usr/bin/sh'
sxhkd &
exec bspwm
wmname compiz
