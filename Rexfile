use 5.36.0;
use Rex -feature => ['1.4'];

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

# convert file contents to a string (thanks tim!)
sub file_to_string {
  open(DATA, "<$_[0]") or die "Can't open $_[0]";
  my @lines = <DATA>;
  close(DATA);
  my $data = join("", @lines);
  $data =~ s/\n/ /g;
  return $data;
}

# Checks if a file exists
sub file_exists {
  my ($filepath) = @_;
  return -e $filepath;
}

# Downloads a file from a given URL
sub download_file {
  my ($url, $filename) = @_;
  my $status = system("ftp -o $filename $url");
  return $status == 0;
}

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
  chmod(0700, $ENV{'HOME'});
};

# Updates dotfiles repository or clones if not present
task 'update_or_clone_dotfiles', sub {
  if (-d "$ENV{HOME}/.dotfiles") {
    chdir "$ENV{HOME}/.dotfiles";
    system('git', 'pull', '--recurse-submodules');
  } else {
    system('git', 'clone', '--recurse-submodules', '--depth', '1', 'https://github.com/izder456/dotfiles', "$ENV{HOME}/.dotfiles");
  }
};

# task to set up doas-capable user with two params (user & pass)
task 'doas_user_setup', sub {
  my $params = shift;
  my $user = $params->{user};
  my $pass = $params->{pass};
  # Ensure :doas is present
  group "doas", ensure => "present";
  # Add $user with $pass
  account "$user",
  ensure => "present",
  uid => 1000,
  home => "/home/$user",
  expire => 'never',
  groups => [ 'izder456', 'operator', 'doas', 'staff' ],
  password => "$pass",
  create_home => TRUE;
};

# task to install ports from .pkglist
task 'install_ports', sub {
  my $params = shift;
  my $pkgfile = $params->{pkgfile};
  my $pkglist = file_to_string($pkgfile);
  # Install
  pkg [ $pkglist ], ensure => "present";
};

# task to install cargo-packages from .cargolist
task 'install_cargo', sub {
  my $params = shift;
  my $cargofile = $params->{cargofile};
  my $cargolist = file_to_string($cargofile);
  # Install
  system("cargo", "install", "$cargolist");
};

# Upgrade/Merge/Install dotfiles
sub update_or_clone_dotfiles {
  if (-d "$ENV{HOME}/.dotfiles") {
    chdir "$ENV{HOME}/.dotfiles";
    system('git', 'pull', '--recurse-submodules');
  } else {
    system('git', 'clone', '--recurse-submodules', '--depth', '1', 'https://github.com/izder456/dotfiles', "$ENV{HOME}/.dotfiles");
  }
}

task 'symlink_dots', sub {
  say "We will install dots now!";
  say "Press ENTER to continue:";
  <STDIN>;
  update_or_clone_dotfiles();
  system('dfm', 'umi');
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
  system('ln', '-sf', '$ENV{HOME}/.dotfiles/Emacs-Config', "$ENV{HOME}/.doom.d");
  system("$ENV{HOME}/.emacs.d/bin/doom", 'sync');
};

task 'update_or_clone_stumpwm', sub {
  say "We will set up StumpWM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  if (-d "$ENV{HOME}/.stumpwm.d") {
    chdir "$ENV{HOME}/.stumpwm.d";
  } else {
    system('ln', '-sf', '$ENV{HOME}/.dotfiles/StumpWM-Config', '$ENV{HOME}/.stumpwm.d');
  }
};

# Installs backgrounds to /usr/local/share/backgrounds
task 'install_backgrounds', sub {
  say "We will install backgrounds now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '-p', '/usr/local/share/backgrounds');
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/backgrounds/*', '/usr/local/share/backgrounds');
};

# Sets up Xenodm configuration
task 'setup_xenodm', sub {
  say "We will set up XenoDM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/config/*', '/etc/X11/xenodm/');
};

task 'setup_apmd', sub {
  say "We will set up APM-Autohook now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '/etc/apm');
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/APM-Config/*', '/etc/apm/');
};

# Compiles shuf re-implementation
task 'compile_shuf', sub {
  say "we will compile shuf now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/ibara/shuf.git', "$ENV{HOME}/.shuf");
  chdir "$ENV{HOME}/.shuf";
  system('./configure');
  system('make');
  system('doas', 'make', 'install');
};

# Compiles in my Slock Setup
task 'compile_slock', sub {
  say "we will compile suckless lock now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/Izder456/slock.git', "$ENV{HOME}/.slock");
  chdir "$ENV{HOME}/.slock";
  system('make');
  system('doas', 'make', 'install');
};

# Compiles afetch
task 'compile_afetch', sub {
  say "we will compile afetch now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/13-CF/afetch.git', "$ENV{HOME}/.afetch");
  chdir "$ENV{HOME}/.afetch";
  system('make');
  system('doas', 'make', 'install');
};

# Setup Battery Monitor
task 'setup_battstat', sub {
  say "we will set up battery monitor now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/imwally/battstat.git', "$ENV{HOME}/.battstat");
  chdir "$ENV{HOME}/.battstat";
  system('doas', 'install', './battstat', '/usr/local/bin');
};

# Updates XDG user directories
task 'update_xdg_user_dirs', sub {
  say "we will set xdg-user-dirs now!";
  say "press enter to continue:";
  <STDIN>;
  system('xdg-user-dirs-update');
  system('mkdir', '$ENV{HOME}/Projects');
};
