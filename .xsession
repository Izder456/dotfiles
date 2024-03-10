#!/bin/ksh

# Load in resources
function load_resources {
    # set xdefaults
    [ -f /etc/xprofile ] && . /etc/profile
    [ -f ~/.xprofile ] && . ~/.xprofile
    [ -f ~/.xresources ] && . ~/.xresources
    # Mute xbell
    xset b off
    # Add spleen font to xfonts path
    xset +fp /usr/local/share/fonts/spleen
    # raise limits, disable .core dumps
    ulimit -d 17000000
    ulimit -Sc 0
}

function autostart {
    # if dbus exists, open it
    if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-x11`
    fi
    # notification daemon
    dunst &
    # run compositor in bg
    picom -b &
    # override default bell sound
    pkill nxbelld; ~/.local/bin/nxbelld -v100 -d200 -f ~/.local/sfx/Pop.wav -b
    # set a random background
    feh --bg-fill --randomize /usr/local/share/backgrounds &
    # set slock
    xidle -delay 5 -nw -program "/usr/local/bin/slock" -timeout 1800 &
}

# actually run shit
load_resources
autostart
stumpwm --tls-limit 24
