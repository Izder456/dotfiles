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
# set qt apps to use kvantum widgets if avail
export QT_STYLE_OVERRIDE=kvantum
# make sdl mouse cursor lag go away
export SDL_VIDEO_X11_DGAMOUSE=0

# set XDG stuff
function xdg_runtime {
    export XDG_RUNTIME_DIR=/tmp/run/$(id -u)
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_CACHE_HOME=$HOME/.cache
    export XDG_DATA_DIR=$HOME/.local/share
    export XDG_STATE_HOME=$HOME/.local/state
    export XDG_CURRENT_DESKTOP=StumpWM
    export DESKTOP_SESSION=stumpwm
    if [ ! -d $XDG_RUNTIME_DIR ]; then
	mkdir -m 700 -p $XDG_RUNTIME_DIR
    fi
}

function gpg_agent {
    eval $(gpg-agent --daemon \
                     --enable-ssh-support \
                     --write-env-file $HOME/.gpg-agent-info)
    if [ -f $HOME/.gpg-agent-info ]; then
        . $HOME/.gpg-agent-info
        export GPG_AGENT_INFO
        export SSH_AUTH_SOCK
    fi
}

# Function to get screen dimensions
function get_screen_dimension {
    typeset dimension=$(xdpyinfo | awk '/dimensions/ {print $2}')
    case $1 in
        0) echo "${dimension%x*}" ;;
        1) echo "${dimension#*x}" ;;
        *) echo "Invalid argument. Use 0 for width or 1 for height." ;;
    esac
}

# Function to load environment
function load_environment {
    set -A files "$@"
    for file in "${file[@]}"; do
        if [ -f "$file" ]; then
            . "$file"
        fi
    done
}

# Function to load resources
function load_resources {
    set -A resources "$@"
    for resource in "${resources[@]}"; do
        if [ -f "$resource" ]; then
            xrdb -merge "$resource"
        fi
    done
}

# Function to manage autostarts
function manage_autostarts {
    for process in "$@"; do
        process_name="${process% *}"
        if pgrep "$process_name" > /dev/null; then
            pkill "$process_name"
        fi
        eval "$process"
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
             -buttons "StumpWM[]":1,"EMWM[]":2 \
             -geometry ${XMESG_WIDTH}x${XMESG_HEIGHT}+${xmesg_xpos}-${xmesg_yoffset}
    typeset choice=$?

    case ${choice} in
        1) echo "stumpwm" ;;
        2) echo "emwm" ;;
    esac
}

# Load in environment & resources
load_environment /etc/xprofile ~/.xprofile
load_resources ~/.xresources ~/.xresources.d/emwm

# Select Window Manager
selected_wm=$(select_wm)

# Launch the selected window manager
case ${selected_wm} in
    stumpwm)
        wm=$(command -v stumpwm)
        wm_args="--disable-ldb --lose-on-corruption"
        ;;
    emwm)
        wm=$(command -v emwm)
        wm_args=""
        ;;
esac

# No .core files
ulimit -Sc 0

# Set XDG Stuffs
xdg_runtime
# Set GnuPG Stuffs
gpg_agent
# ^ these need to be here so autostarts can work

# Autostarts
manage_autostarts "picom -b" \
                  "urxvtd -q -f -o" \
                  "emacs --daemon" \
		  "~/.local/bin/nxbelld -t 150 -v100 -d200 -f ~/.local/sfx/Funk.wav -b " \
		  "feh --bg-fill --randomize /usr/local/share/backgrounds &" \
		  "xidle -delay 5 -nw -program /usr/local/bin/slock -timeout 1800 &" \
                  "dunst &"

exec dbus-launch --exit-with-session --sh-syntax "${wm}" ${wm_args}

exit 0
