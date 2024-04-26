#!/bin/ksh

# Define variables at the top for easy access
XMESG_WIDTH=512
XMESG_HEIGHT=128

# Set environment up, .xprofile isn't respected
# Set Default LOCALE
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# Enable HWACCEL for Firefox
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1
# set qt apps to use gtk2 widgets if avail
export QT_QPA_PLATFORMTHEME=gtk2
# make sdl mouse cursor lag go away
export SDL_VIDEO_X11_DGAMOUSE=0
# set XDG dirs
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIR=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Function to get screen dimensions
function get_screen_dimension {
    typeset dimension=$(xdpyinfo | awk '/dimensions/ {print $2}')
    case $1 in
         0) echo ${dimension%x*} ;;
         1) echo ${dimension#*x} ;;
         *) echo "Invalid argument. Use 0 for width or 1 for height." ;;
    esac
}

# Function to load environment
function load_environment {
    set -A files "$@"
    for file in "${file[@]}"; do
        if [ -f $file ]; then
            . $file
        fi
    done
}

# Function to load resources
function load_resources {
    set -A resources "$@"
    for resource in "${resources[@]}"; do
        if [ -f $resource ]; then
            xrdb -merge $resource
        fi
    done
}

# Function to manage autostarts
function manage_autostarts {
    for process in "$@"; do
        process_name="${process% *}"
        if pgrep $process_name > /dev/null; then
            pkill $process_name
        fi
        eval $process
    done
}

# Function to select a window manager
function select_wm {
    # WM Session Prompt
    typeset xwidth=$(get_screen_dimension 0)
    typeset xheight=$(get_screen_dimension 1)
    typeset xmesg_xpos=$((($xwidth - $XMESG_WIDTH) / 2))
    typeset xmesg_yoffset=$((($xheight - $XMESG_HEIGHT) / 2))
    xmessage "Please Choose a Session to load" \
    	    -buttons "StumpWM[]":1,"EMWM[]":2,"TERMINAL[]":3 \
    	    -geometry ${XMESG_WIDTH}x${XMESG_HEIGHT}+${xmesg_xpos}-${xmesg_yoffset}
    typeset choice=$?

    case ${choice} in
	1) wm=$(command -v stumpwm)
	   wm_args="--disable-ldb --lose-on-corruption"
	   ;;
	2) wm=$(command -v xmsm)
	   wm_args=""
	   ;;
	3) wm=$(command -v xterm)
	   wm_args=""
	   ;;
    esac

    dbus-launch --exit-with-session ${wm} ${wm_args}
}

# Load in environment & resources
load_environment /etc/xprofile ~/.xprofile
load_resources ~/.xresources ~/.xresources.d/emwm

# Autostarts
manage_autostarts "picom -b" \
		  "~/.local/bin/nxbelld -v100 -d200 -f ~/.local/sfx/Pop.wav -b" \
		  "feh --bg-fill --randomize /usr/local/share/backgrounds &" \
		  "sleep 5 && dunst &" \
		  "ulimit -Sc 0"
		  "xidle -delay 5 -nw -program /usr/local/bin/slock -timeout 1800 &"

# Select Window Manager
select_wm

exit 0
