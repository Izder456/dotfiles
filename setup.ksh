#!/bin/ksh

# Constants
USERHOME=$HOME
GITHUB="https://github.com"
SLEEPTIME=2
LOG_FILE="/tmp/setup.log";

# Set PATH explicitly
export PATH='/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

# Log setup messages with timestamp
function exception {
    error=$1
    echo "Error: $error"
    exit 1
}


function log {
    message=$1
    timestamp=$(date +"%Y%m%d%H%M%S")

    echo "[$timestamp] $message"
    echo "[$timestamp] $message" >> "$LOG_FILE" 2>&1 || exception "Could not write to $LOG_FILE"
}

# Clean unnecessary files
function clean {
    log "Removing Cruft..."
    rex remove_default_cruft
}

# Ensure Lisp environment is set up
function ensure_lisp {
    log "Quicklisp Setup"
    doas pkg_add -m sbcl rlwrap || exception "Could not install sbcl or rlwrap"
    ftp -o /tmp/quicklisp.lisp "https://beta.quicklisp.org/quicklisp.lisp" || exception "Failed to download quicklisp.lisp"
    ftp -o /tmp/quicklisp-setup.lisp "$GITHUB/izder456/dotfiles/raw/main/quicklisp-setup.lisp" || exception "Failed to download quicklisp-setup.lisp"
    sbcl --load /tmp/quicklisp.lisp --script /tmp/quicklisp-setup.lisp || exception "Failed to run quicklisp setup"
}

# Install port dependencies
function ports_deps {
    log "Installing port dependencies..."
    doas pkg_add -m -l ~/.pkglist || exception "Failed to install port dependencies"
}

# Install cargo dependencies
function cargo_deps {
    log "Installing cargo dependencies..."
    doas pkg_add rust || exception "Failed to install Rust"
    xargs cargo install < ~/.cargolist || exception "Failed to install cargo dependencies"
}

# Clone or update dotfiles repository and run setup scripts
function config_install {
    log "Cloning/Installing Dotfiles..."
    if [ -d "$USERHOME/.dotfiles" ]; then
        cd $USERHOME/.dotfiles || exception "Failed to change directory to .dotfiles" 
        git pull --recurse-submodules --depth 1 || exception "Failed to pull dotfiles"
    else
        git clone --depth 1 --recurse-submodules $GITHUB/Izder456/dotfiles.git $USERHOME/.dotfiles || exception "Failed to clone dotfiles"
    fi
    rex configure_gtk
    rex configure_icons
    $USERHOME/.dotfiles/dfm/dfm install
    doas cp ~/.dotfiles/doas.conf /etc/doas.conf
}

# Setup FiZSH shell
function setup_shell {
    log "Setting up FiZSH..."
    rex configure_default_shell
    rex compile_afetch
}

# Setup background images
function setup_backgrounds {
    log "Installing Backgrounds..."
    rex install_backgrounds
}

# Setup Emacs
function setup_emacs {
    log "Setting up Emacs..."
    rex configure_emacs
}

# Setup Enhanced Motif WM
function setup_emwm {
    log "Setting up Enhanced Motif WM..."
    rex configure_emwm
}

# Setup StumpWM
function setup_stumpwm {
    ensure_lisp
    log "Setting up StumpWM..."
    rex configure_stumpwm
}

# Miscellaneous setup tasks
function setup_misc {
    setup_shell
    log "Miscellaneous setup..."
    rex compile_shuf
    rex compile_slock
    rex compile_st
    rex compile_surf
    rex compile_nxbelld
    rex configure_apmd
    rex install_backgrounds
    rex update_xdg_user_dirs
}

# Setup XenoDM
function setup_xenodm {
    log "Setting up XenoDM..."
    rex configure_xenodm
}

# Check for internet connection
function is_internet_up {
    log "Checking internet connection..."
    nc -zw1 OpenBSD.org 443 || exception "You need internet for this dumdum!";
    log "Internet connection is up!"
}

# Ensure necessary tools are installed
function ensure_needed {
    log "Installing necessary tools: git and p5-Rex..."
    doas pkg_add -m p5-Rex git || exception "Failed to install git and p5-Rex"
    ftp -o $USERHOME/Rexfile $GITHUB/Izder456/dotfiles/raw/main/Rexfile || exception "Failed to download Rexfile"
}

# Ensure all prerequisites
function do_ensure {
    is_internet_up
    ensure_needed
}

do_ensure

# Menu header text

# Display menu and handle user input
function menu {
    while true; do
        clear
	
	echo 'Srcerizder Dotfiles Setup'
	echo 'Options:'
	echo '--------------------------'
	echo '1) Ports   4) StumpWM'
	echo '2) Cargo   5) Emacs'
	echo '3) Emwm    6) Xenodm'
	echo '7) Config  8) Misc'
	echo '9) Clean:'
	echo
	echo 'Other Options:'
	echo '----------------'
	echo 'a) All'
	echo 'r) Reload Menu'
	echo 'q) Quit'
	echo

	echo "Enter your selection: "
	read selection # Move the input prompt to the same line

	[ -z $selection ] && selection="r"
	
	case $selection in
	    1)
		echo "Selected Ports Deps..."; sleep $SLEEPTIME; ports_deps;
		;;
	    2)
		echo "Selected Cargo Deps..."; sleep $SLEEPTIME; cargo_deps;
		;;
	    3)
		echo "Selected Emwm Config..."; sleep $SLEEPTIME; setup_emwm;
		;;
	    4)
		echo "Selected StumpWM-Config..."; sleep $SLEEPTIME; setup_stupmwm;
		;;
	    5)
		echo "Selected Emacs-Config..."; sleep $SLEEPTIME; setup_emacs;
		;;
	    6)
		echo "Selected XenoDM-Config..."; sleep $SLEEPTIME; setup_emacs;
		;;
	    7)
		echo "Selected Install Configs..."; sleep $SLEEPTIME; config_install;
		;;
	    8)
		echo "Selected Misc Setup..."; sleep $SLEEPTIME; setup_misc;
		;;
	    9)
		echo "Selected Clean..."; sleep $SLEEPTIME; clean;
		;;
	    "a")
		echo "Running All...";
		sleep $SLEEPTIME; clean;
		config_install; ports_deps; cargo_deps;
		setup_emwm; setup_stumpwm; setup_emacs; setup_xenodm;
		setup_misc;
		;;
	    "r")
		continue;
		;;
	    "q")
		echo "";
		exit;
		;;
	    *)
		echo "Invalid selection";
		sleep $SLEEPTIME;
		;;
	esac
    done
}

menu
