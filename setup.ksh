#!/bin/ksh
echo "We will install p5-rex & git from ports now!"
echo "Press ENTER to continue:"
read
doas pkg_add p5-Rex git
echo "Setting up Ports..."
doas pkg_add -l ~/.pkglist
echo "Cloning/Installing Dots..."
git clone --depth 1 --recurse-submodules https://github.com/Izder456/dotfiles ./.dotfiles
./.dotfiles/bin/dfm install
doas cp ~/.dotfiles/doas.conf
echo "We will run the Rexfile now!"
echo "Press ENTER to continue:"
read
echo "Removing Cruft..."
rex remove_default_cruft
echo "Setting up Cargo..."
rex install_cargo --cargofile=".cargolist"
echo "Setting up FiZSH..."
rex configure_default_shell
echo "Setting up DOOM Emacs..."
rex configure_doom_emacs
echo "Setting up StumpWM..."
rex update_or_clone_stumpwm
echo "Installing Backgrounds..."
rex install_backgrounds
echo "Setting up XenoDM..."
rex setup_xenodm
echo "Setting up APMD..."
rex setup_apmd
echo "Setting up extras..."
rex compile_shuf
rex compile_slock
rex compile_afetch
rex setup_battstat
echo "XDG-User-Dirs-Setup"
rex update_xdg_user_dirs
echo "DONE!"
