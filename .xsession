#!/bin/ksh

##
# blocking this for organization reasons
##

# Load in resources
{
    # set xprofile
    [ -f /etc/xprofile ] && . /etc/profile
    [ -f ~/.xprofile ] && . ~/.xprofile
    # set xdefaults
    [ -f ~/.xresources ] && xrdb -merge ~/.xresources
    # Mute xbell
    xset b off
    # Add spleen & noto (emoji) fonts to xfonts path
    xset +fp /usr/local/share/fonts/spleen
    xset +fp /usr/local/share/fonts/noto
    # raise limits, disable .core dumps
    ulimit -d 17000000
    ulimit -Sc 0
}

# autostarts
{
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

# actually run my wm (with dbus support :3)
exec dbus-launch --exit-with-session stumpwm --disable-ldb --lose-on-corruption
