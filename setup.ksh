#!/bin/ksh

typeset -r SLEEPTIME=2

REVON=$(tput smso)  # Reverse on.
REVOFF=$(tput rmso) # Reverse off.

function clean
{
    echo "$REVON Removing Cruft... $REVOFF"
    rex remove_default_cruft
}

function ensure_lisp
{
    echo "$REVON Quicklisp Setup $REVOFF"
    doas pkg_add -vm sbcl rlwrap
    ftp -o /tmp/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp
    ftp -o /tmp/quicklisp-setup.lisp https://github.com/izder456/dotfiles/raw/main/quicklisp-setup.lisp
    sbcl --load /tmp/quicklisp.lisp --script /tmp/quicklisp-setup.lisp
}

function ports_deps
{
    echo "$REVON We will install port deps now! $REVOFF"
    doas pkg_add -vvvvm -l ~/.pkglist
}

function cargo_deps
{
    doas pkg_add rust
    echo "$REVON We will install cargo deps now! $REVOFF"
    xargs cargo install < ~/.cargolist
}

function config_install
{
    echo "$REVON Cloning/Installing Dots... $REVOFF"
    if [[ ! -d "${HOME}/.dotfiles" ]]; then
	git clone --depth 1 --recurse-submodules "https://github.com/Izder456/dotfiles.git" "${HOME}/.dotfiles"
    elif [[ -d "${HOME}/.dotfiles" ]]; then
	echo "Already here"
    else # something got fucked
	echo "Dots brokey"
	exit 1
    fi
    "${HOME}/.dotfiles/bin/dfm" install
    doas cp ~/.dotfiles/doas.conf /etc/doas.conf
}

function setup_shell
{
    echo "$REVON Setting up FiZSH... $REVOFF"
    rex configure_default_shell
    rex compile_afetch
}

function setup_backgrounds
{
    echo "$REVON Installing Backgrounds... $REVOFF"
    rex install_backgrounds
}

function setup_emacs
{
    echo "$REVON Setting up Emacs... $REVOFF"
    rex configure_emacs
}

function setup_stumpwm
{
    ensure_lisp
    echo "$REVON Setting up StumpWM... $REVOFF"
    rex update_or_clone_stumpwm
}

function setup_misc
{
    setup_shell
    echo  "$REVON Misc setup... $REVOFF"
    rex compile_shuf
    rex compile_slock
    rex compile_st
    rex compile_surf
    rex compile_nxbelld
    rex setup_apmd
    rex install_backgrounds
    rex update_xdg_user_dirs
}

function setup_xenodm
{
    ensure_hard
    echo "$REVON Setting up XenoDM... $REVOFF"
    rex setup_xenodm
}

function is_internet_up
{
    echo "$REVON Checking if we have internet...$REVOFF"
    if nc -zw1 OpenBSD.org 443; then
	echo "$REVON We have a Connection!$REVOFF"
    else
	return 1
    fi
}

function ensure_needed
{
    echo "$REVON We need git and p5-Rex from ports for functionality"
    echo ""
    echo "$REVON We will install p5-rex & git from ports now! $REVOFF"
    doas pkg_add -vm p5-Rex git
    ftp -o $HOME/Rexfile https://github.com/Izder456/dotfiles/raw/main/Rexfile
}


function do_ensure
{
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

while :
do
    clear
    print $HEADER_TEXT
    read selection
    if [[ -z "$selection" ]]
    then selection=r
    fi
    case $selection in
	1)  print "\nSelected Ports Deps..."
	    sleep $SLEEPTIME
	    ports_deps;;
	2)  print "Selected Cargo Deps..."
	    sleep $SLEEPTIME
	    cargo_deps;;
	3)  print "Selected Install Configs..."
	    sleep $SLEEPTIME
	    config_install;;
	4)  print "Selected StumpWM Config..."
	    sleep $SLEEPTIME
	    setup_stumpwm;;
	5)  print "Selected Emacs Config..."
	    sleep $SLEEPTIME
	    setup_emacs;;
	6)  print "Selected XenoDM Config..."
	    sleep $SLEEPTIME
	    setup_xenodm;;
	7)  print "Selected Misc..."
	    sleep $SLEEPTIME
	    setup_misc;;
	8)  print "Selected Clean..."
	    sleep $SLEEPTIME
	    clean;;
	a|A)  print "Running All..."
	      sleep $SLEEPTIME
	      clean
	      config_install
	      ports_deps
	      cargo_deps
	      setup_stumpwm
	      setup_emacs
	      setup_xenodm
	      setup_misc;;
	r|R)  continue;;
	q|Q)  print
	      exit;;
	*)  print "\n$REVON Invalid selection $REVOFF"
	    sleep 1;;
    esac
done
