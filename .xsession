#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && sh ~/.xprofile
[ -f ~/.xresources ] && xrdb ~/.xresources
dunst &
picom -b &
ulimit -Sc 0
feh --bg-fill $(shuf -n1 -e /usr/local/share/backgrounds/*.png) &
xidle -delay 5 -nw -program "/usr/local/bin/slock" -timeout 1800 &
emacs --daemon &
stumpwm
