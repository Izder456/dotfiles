#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.xresources ] && xrdb ~/.xresources
if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
        eval `dbus-launch --sh-syntax --exit-with-x11`
fi
LC_CTYPE="en_US.UTF-8"
dunst &
picom -b &
ulimit -d 17000000
ulimit -Sc 0
feh --bg-fill $(shuf -n1 -e /usr/local/share/backgrounds/*.png) &
xidle -delay 5 -nw -program "/usr/local/bin/slock" -timeout 1800 &
stumpwm
