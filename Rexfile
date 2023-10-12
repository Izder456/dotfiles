use 5.36.0;
use Rex -feature => ['1.4'];

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

# task to clean home dir
task 'remove_default_cruft', sub {
  unlink(
    "$ENV{HOME}/.cshrc",
    "$ENV{HOME}/.login",
    "$ENV{HOME}/.mailrc",
    "$ENV{HOME}/.profile",
    "$ENV{HOME}/.Xdefaults",
    "$ENV{HOME}/.cvsrc"
  );
  system('doas', 'chmod', '0700', "$ENV{'HOME'}");
};

# Configures and sets up the default shell
task 'configure_default_shell', sub {
  say "We will install FiZSH now!";
  say "Press ENTER to continue:";
  <STDIN>;
  # Grab openbsd autocompletes
  if (-d "$ENV{HOME}/.zsh-openbsd") {
    system('git', 'pull');
  } else {
    system('git', 'clone', 'https://github.com/sizeofvoid/openbsd-zsh-completions.git', "$ENV{HOME}/.zsh-openbsd");
  }
  # Grab fzf tabcompletes
  if (-d "$ENV{HOME}/.zsh-openbsd") {
    system('git', 'pull');
  } else {
    system('git', 'clone', 'https://github.com/Aloxaf/fzf-tab.git', "$ENV{HOME}/.zsh-fzf");
  }
  # Grab fizsh src setup
  if (-d "$ENV{HOME}/.fizsh") {
    chdir "$ENV{HOME}/.fizsh";
  } else {
    system('git', 'clone', 'https://github.com/zsh-users/fizsh.git', "$ENV{HOME}/.fizsh");
    chdir "$ENV{HOME}/.fizsh";
  }
  system('./configure');
  system('make');
  system('doas', 'make', 'install');
  system('cp', "$ENV{HOME}/.dotfiles/.fizshrc", "$ENV{HOME}/.fizsh/.fizshrc");
  system('chsh', '-s', '/usr/local/bin/fizsh');
};

# Configures and installs doom emacs
task 'configure_doom_emacs', sub {
  say "We will install Doom-Emacs now!";
  say "Press ENTER to continue:";
  <STDIN>;
  if (-d "$ENV{HOME}/.emacs.d") {
    chdir "$ENV{HOME}/.emacs.d";
  } else {
    system('git', 'clone', '--depth', '1', 'https://github.com/hlissner/doom-emacs.git', "$ENV{HOME}/.emacs.d/");
    chdir "$ENV{HOME}/.emacs.d";
  }
  system("$ENV{HOME}/.emacs.d/bin/doom", 'install', '--config', '--env', '--fonts');
  if (-d "$ENV{HOME}/.doom.d") {
    system('rm', '-rvf', "$ENV{HOME}/.doom.d");
  }
  system('ln', '-sf', "$ENV{HOME}/.dotfiles/Emacs-Config", "$ENV{HOME}/.doom.d");
  system("$ENV{HOME}/.emacs.d/bin/doom", 'sync');
};

task 'update_or_clone_stumpwm', sub {
  say "We will set up StumpWM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  if (-d "$ENV{HOME}/.stumpwm.d") {
    chdir "$ENV{HOME}/.stumpwm.d";
  } else {
    system('ln', '-sf', "$ENV{HOME}/.dotfiles/StumpWM-Config", "$ENV{HOME}/.stumpwm.d");
  };
};

# Installs backgrounds to /usr/local/share/backgrounds
task 'install_backgrounds', sub {
  say "We will install backgrounds now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '-p', '/usr/local/share/backgrounds');
  system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/backgrounds/*"), '/usr/local/share/backgrounds');
};

# Sets up Xenodm configuration
task 'setup_xenodm', sub {
  say "We will set up XenoDM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/XenoDM-Config/*"), '/etc/X11/xenodm/');
};

task 'setup_apmd', sub {
  say "We will set up APM-Autohook now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '/etc/apm');
  system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/APM-Config/*"), '/etc/apm/');
};

# Compiles shuf re-implementation
task 'compile_shuf', sub {
  say "We will compile shuf now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/ibara/shuf.git', "$ENV{HOME}/.shuf");
  chdir "$ENV{HOME}/.shuf";
  system('./configure');
  system('make');
  system('doas', 'make', 'install');
};

# Compiles in my Slock Setup
task 'compile_slock', sub {
  say "We will compile suckless lock now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/Izder456/slock.git', "$ENV{HOME}/.slock");
  chdir "$ENV{HOME}/.slock";
  system('make');
  system('doas', 'make', 'install');
};


# Compiles in my SURF Setup
task 'compile_surf', sub {
  say "We will compile suckless surf now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/Izder456/surf.git', "$ENV{HOME}/.surf-src");
  chdir "$ENV{HOME}/.surf-src";
  system('make');
  system('doas', 'make', 'install');
};


# Compiles in my ST Setup
task 'compile_st', sub {
  say "We will compile suckless term now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/Izder456/st.git', "$ENV{HOME}/.st");
  chdir "$ENV{HOME}/.st";
  system('make');
  system('doas', 'make', 'install');
};

# Compiles afetch
task 'compile_afetch', sub {
  say "We will compile afetch now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/13-CF/afetch.git', "$ENV{HOME}/.afetch");
  chdir "$ENV{HOME}/.afetch";
  system('make');
  system('doas', 'make', 'install');
};

# Setup Battery Monitor
task 'setup_battstat', sub {
  say "We will set up battery monitor now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/imwally/battstat.git', "$ENV{HOME}/.battstat");
  chdir "$ENV{HOME}/.battstat";
  system('doas', 'install', './battstat', '/usr/local/bin');
};

# Updates XDG user directories
task 'update_xdg_user_dirs', sub {
  say "We will set xdg-user-dirs now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('xdg-user-dirs-update');
  system('mkdir', "$ENV{HOME}/Projects");
};
