#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.xresources ] && xrdb ~/.xresources
if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
        eval `dbus-launch --sh-syntax --exit-with-x11`
fi
export LC_CTYPE="en_US.UTF-8"
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1
xset b off
dunst &
picom -f -b &
ulimit -d 17000000
ulimit -Sc 0
pkill nxbelld; ~/.local/bin/nxbelld -v100 -d200 -f ~/.local/sfx/Pop.wav -b
xset +fp /usr/local/share/fonts/spleen
feh --bg-fill $(shuf -n1 -e /usr/local/share/backgrounds/*) &
xidle -delay 5 -nw -program "/usr/local/bin/slock" -timeout 1800 &
stumpwm
