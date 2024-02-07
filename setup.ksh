#!/bin/ksh

# configuration variables
typeset -r SLEEPTIME=2

# "colors"
REVON=$(tput smso)  # Reverse on.
REVOFF=$(tput rmso) # Reverse off.

# logfile
LOG_FILE="/tmp/setup.log"

function log {
    local timestamp=$(date +"%Y-%m-%d_%H:%M:%S")
    echo "[$timestamp] $1" | tee -a "$LOG_FILE"
}

# error handling
trap 'log "Error occurred at line $LINENO"; exit 1' ERR

function clean {
    log "$REVON Removing Cruft... $REVOFF"
    rex remove_default_cruft
}

function ensure_lisp {
    log "$REVON Quicklisp Setup $REVOFF"
    doas pkg_add -vm sbcl rlwrap
    ftp -o /tmp/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp
    ftp -o /tmp/quicklisp-setup.lisp https://github.com/izder456/dotfiles/raw/main/quicklisp-setup.lisp
    sbcl --load /tmp/quicklisp.lisp --script /tmp/quicklisp-setup.lisp
}

function ports_deps {
    log "$REVON We will install port deps now! $REVOFF"
    doas pkg_add -vvvvm -l ~/.pkglist
}

function cargo_deps {
    doas pkg_add rust
    log "$REVON We will install cargo deps now! $REVOFF"
    xargs cargo install < ~/.cargolist
}

function config_install {
    log "$REVON Cloning/Installing Dots... $REVOFF"
    if [[ ! -d "${HOME}/.dotfiles" ]]; then
        git clone --depth 1 --recurse-submodules "https://github.com/Izder456/dotfiles.git" "${HOME}/.dotfiles"
    elif [[ -d "${HOME}/.dotfiles" ]]; then
        log "Already here"
        (cd "${HOME}/.dotfiles"
         git pull --recurse-submodules --depth 1)
        cd "${HOME}"
    else # something got fucked
        log "Dots brokey"
        exit 1
    fi
    rex configure_gtk
    rex configure_icons
    "${HOME}/.dotfiles/bin/dfm" install
    doas cp ~/.dotfiles/doas.conf /etc/doas.conf
}

function setup_shell {
    log "$REVON Setting up FiZSH... $REVOFF"
    rex configure_default_shell
    rex compile_afetch
}

function setup_backgrounds {
    log "$REVON Installing Backgrounds... $REVOFF"
    rex install_backgrounds
}

function setup_emacs {
    log "$REVON Setting up Emacs... $REVOFF"
    rex configure_emacs
}

function setup_stumpwm {
    ensure_lisp
    log "$REVON Setting up StumpWM... $REVOFF"
    rex update_or_clone_stumpwm
}

function setup_misc {
    setup_shell
    log  "$REVON Misc setup... $REVOFF"
    rex compile_shuf
    rex compile_slock
    rex compile_st
    rex compile_surf
    rex compile_nxbelld
    rex setup_apmd
    rex install_backgrounds
    rex update_xdg_user_dirs
}

function setup_xenodm {
    log "$REVON Setting up XenoDM... $REVOFF"
    rex setup_xenodm
}

function is_internet_up {
    log "$REVON Checking if we have internet...$REVOFF"
    if nc -zw1 OpenBSD.org 443; then
        log "$REVON We have a Connection!$REVOFF"
    else
        return 1
    fi
}

function ensure_needed {
    log "$REVON We need git and p5-Rex from ports for functionality"
    log "$REVON We will install p5-rex & git from ports now! $REVOFF"
    doas pkg_add -vm p5-Rex git
    ftp -o $HOME/Rexfile https://github.com/Izder456/dotfiles/raw/main/Rexfile
}


function do_ensure {
    is_internet_up
    ensure_needed
}

do_ensure

HEADER_TEXT=`cat <<-EOF
\n$REVON Srcerizder Dotfiles Setup $REVOFF
\nOptions:
\n--------------------------
\n  1) Ports \t 4) StumpWM
\n  2) Cargo \t 5) Emacs
\n  3) Config\t 6) XenoDM
\n  7) Misc\t 8) Clean
\n
\nOther Options:
\n----------------
\n  a) All (Reccomended)
\n  r) Reload Menu
\n  q) Quit
\n
\nEnter your selection: r\b\c
EOF
`


function main {
    while :
    do
        clear
        print $HEADER_TEXT
        read selection
        if [[ -z "$selection" ]]; then
            selection=r
        fi
        case $selection in
            1) print "\nSelected Ports Deps..."
               sleep $SLEEPTIME
               ports_deps;;
            2) print "Selected Cargo Deps..."
               sleep $SLEEPTIME
               cargo_deps;;
            3) print "Selected Install Configs..."
               sleep $SLEEPTIME
               config_install;;
            4) print "Selected StumpWM Config..."
               sleep $SLEEPTIME
               setup_stumpwm;;
            5) print "Selected Emacs Config..."
               sleep $SLEEPTIME
               setup_emacs;;
            6) print "Selected XenoDM Config..."
               sleep $SLEEPTIME
               setup_xenodm;;
            7) print "Selected Misc..."
               sleep $SLEEPTIME
               setup_misc;;
            8) print "Selected Clean..."
               sleep $SLEEPTIME
               clean;;
            a|A) print "Running All..."
                 sleep $SLEEPTIME
                 clean
                 config_install
                 ports_deps
                 cargo_deps
                 setup_stumpwm
                 setup_emacs
                 setup_xenodm
                 setup_misc;;
            r|R) continue;;
            q|Q) print
                 exit;;
            *) print "\n$REVON Invalid selection $REVOFF"
               sleep 1;;
        esac
    done
}

# main
main
