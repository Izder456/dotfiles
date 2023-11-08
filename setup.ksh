#!/bin/ksh

typeset -r SLEEPTIME=2

REVON=$(tput smso)  # Reverse on.
REVOFF=$(tput rmso) # Reverse off.

function clean
{
  echo "$REVON Removing Cruft... $REVOFF"
  rm -rvf "$HOME/.*"
  rex remove_default_cruft
}

function ensure_hard
{
  echo "$REVON We will install p5-rex & git from ports now! $REVOFF"
  doas pkg_add -vm p5-Rex git
}

function ports_deps
{
  echo "$REVON We will install port deps now! $REVOFF"
  doas pkg_add -vm -l ~/.pkglist
}

function cargo_deps
{
  ports_deps
  echo "$REVON We will install cargo deps now! $REVOFF"
  xargs cargo install < ~/.cargolist
}

function config_install
{
  ensure_hard
  clean
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
  cargo_deps
  config_install
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
  ensure_hard
  ports_deps
  echo "$REVON Setting up Emacs... $REVOFF"
  rex configure_emacs
}

function setup_stumpwm
{
  ensure_hard
  ports_deps
  setup_backgrounds
  echo "$REVON Setting up StumpWM... $REVOFF"
  rex update_or_clone_stumpwm
}

function setup_misc
{
  ensure_hard
  ports_deps
  setup_shell
  echo  "$REVON Misc setup... $REVOFF"
  rex compile_shuf
  rex compile_slock
  rex compile_st
  rex compile_surf
  rex setup_apmd
  rex update_xdg_user_dirs
}

function setup_xenodm
{
  ensure_hard
  ports_deps
  setup_backgrounds
  setup_misc
  echo "$REVON Setting up XenoDM... $REVOFF"
  rex setup_xenodm
}

while :
do
  clear
  print "\t    $REVON Srcerizder's Dotfiles Setup $REVOFF"
  print
  print
  print "\tOptions:"
  print "\t---------------------------------------------"
  print "\t1) Ports Deps     4) StumpWM"
  print "\t2) Cargo Deps     5) Emacs"
  print "\t3) Install Config 6) XenoDM"
  print "\t7) Misc           8) Clean"
  print
  print "\n\tOther Options:"
  print "\t----------------"
  print "\ta) All (Reccomended)"
  print "\tr) Reload Menu"
  print "\tq) Quit"
  print
  print "\tEnter your selection: r\b\c"
  read selection
  if [[ -z "$selection" ]]
      then selection=r
  fi

  case $selection in
      1)  print "\nSelected Ports Deps..."
          sleep $SLEEPTIME
          ports_deps
          ;;
      2)  print "Selected Cargo Deps..."
          sleep $SLEEPTIME
          cargo_deps
          ;;
      3)  print "Selected Install Configs..."
          sleep $SLEEPTIME
          config_install
          ;;
      4)  print "Selected StumpWM Config..."
          sleep $SLEEPTIME
          setup_stumpwm
          ;;
      5)  print "Selected Emacs Config..."
          sleep $SLEEPTIME
          setup_emacs
          ;;
      6)  print "Selected XenoDM Config..."
          sleep $SLEEPTIME
          setup_xenodm
          ;;
      7)  print "Selected Misc..."
          sleep $SLEEPTIME
          setup_misc
          ;;
      8)  print "Selected Clean..."
          sleep $SLEEPTIME
          clean
          ;;
    a|A)  print "Running All..."
          sleep $SLEEPTIME
          ports_deps
          cargo_deps
          config_install
          setup_stumpwm
          setup_emacs
          setup_xenodm
          setup_misc
          ;;
    r|R)  continue
          ;;
    q|Q)  print
          exit
          ;;
      *)  print "\n$REVON Invalid selection $REVOFF"
          sleep 1
          ;;
  esac
done
