#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.Xdefaults ] && xrdb ~/.Xdefaults
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
ulimit -Sc 0
feh --bg-fill /usr/local/share/backgrounds/5pm-threed.png &
sdorfehs 
