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

# WM Session Prompt
{
    # Grab the Screen Dimentions and save into globals
    XWIDTH=$(xdpyinfo | awk '/dimensions/ {print $2}' | cut -d 'x' -f 1)
    XHEIGHT=$(xdpyinfo | awk '/dimensions/ {print $2}' | cut -d 'x' -f 2)

    # XMessage
    XMESG_WIDTH=512
    XMESG_HEIGHT=128
    XMESG_XPOS=$((($XWIDTH - $XMESG_WIDTH) / 2))
    XMESG_YOFFSET=$((($XHEIGHT- $XMESG_HEIGHT) / 2))
    
    # Ask which WM to use.
    xmessage "Please Choose a Session to load" \
	     -buttons "StumpWM[]":1,"EMWM[]":2,"CWM[]":3,"FVWM[]":4 \
	     -geometry ${XMESG_WIDTH}x${XMESG_HEIGHT}+${XMESG_XPOS}-${XMESG_YOFFSET}
    CHOICE=$?

    case ${CHOICE} in
	1) WM=$(which stumpwm)
	   WM_ARGS="--diable-ldb --lose-on-corruption"
	   ;;
	2) WM=$(which xmsession)
	   WM_ARGS=""
	   ;;
	3) WM=$(which cwm)
	   WM_ARGS=""
	   ;;
	4) WM=$(which fvwm)
	   WM_ARGS=""
	   ;;
    esac

    # start wm
    
    exec dbus-launch --exit-with-session ${WM} ${WM_ARGS} &
    WAIT_PID=$!
    
    # wait for the WM to die
    wait ${WAIT_PID}
}

exit 0
