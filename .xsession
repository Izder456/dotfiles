#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && sh ~/.xprofile
[ -f ~/.xresources ] && xrdb ~/.xresources
exec dunst &
#exec ~/.local/bin/locker &
exec picom -b &
ulimit -Sc 0
exec feh --bg-fill $(shuf -n1 -e /usr/local/share/backgrounds/*.png) &
exec stumpwm
