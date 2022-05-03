#!/bin/bash

xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources
mpd &
#source .zshrc
redshift -l 0:35 &
export SXHKD_SHELL='/usr/bin/sh'
#sxhkd &
exec awesome
#wmname compiz
