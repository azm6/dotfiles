sxhkd &
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources
mpd &
urxvtd &
source .zshrc
redshift -l 0:35 &
exec bspwm
wmname compiz
