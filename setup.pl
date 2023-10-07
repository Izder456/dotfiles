#!/usr/bin/env perl

# Ensure Perl 5.36.0 compatibility
use 5.36.0;

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

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

# Removes default OpenBSD files
sub remove_default_files {
  unlink(
    "$ENV{HOME}/.cshrc",
    "$ENV{HOME}/.login",
    "$ENV{HOME}/.mailrc",
    "$ENV{HOME}/.profile",
    "$ENV{HOME}/.Xdefaults",
    "$ENV{HOME}/.cvsrc"
  );
}

# Sets permissions for user's HOME directory
sub set_home_directory_perms {
  chmod(0700, $ENV{'HOME'});
}

# Install port deps with pkg_add using `.pkglist`
sub install_ports {
  say "We will install deps now!";
  say "Press ENTER to continue:";
  <STDIN>;
  my $pkglist = ".pkglist";
  open my $info, $pkglist or die "Could not open $file: $!";
  while( my $line = <$info>)  {
    say $line;
    last if $. == 2;
  }
  close $info;
}

# Install rust programs with cargo using an array.
sub install_cargo_programs {
  say "We will install cargo deps now!";
  say "Press Enter to continue";
  <STDIN>;
  my @cargolist = ('sd', 'eza', 'tere', 'onefetch', 'tokei', 'du-dust', 'cargo-update-installed', 'tre-command', 'hyperfine');
  system('cargo', 'install', @rust_dependencies);
}

# Updates dotfiles repository or clones if not present
sub update_or_clone_dotfiles {
  if (-d "$ENV{HOME}/.dotfiles") {
    chdir "$ENV{HOME}/.dotfiles";
    system('git', 'pull', '--recurse-submodules');
  } else {
    system('git', 'clone', '--recurse-submodules', '--depth', '1', 'https://github.com/izder456/dotfiles', "$ENV{HOME}/.dotfiles");
  }
}

# Upgrade/Merge/Install dotfiles
sub symlink_dots {
  say "We will install dots now!";
  say "Press ENTER to continue:";
  <STDIN>;
  update_or_clone_dotfiles();
  system('dfm', 'umi');
}

# Configures and sets up the default shell
sub configure_default_shell {
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
}

# Configures and installs doom emacs
sub configure_doom_emacs {
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
}

sub update_or_clone_stumpwm {
  say "We will set up StumpWM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  if (-d "$ENV{HOME}/.stumpwm.d") {
    chdir "$ENV{HOME}/.stumpwm.d";
  } else {
    system('ln', '-sf', '$ENV{HOME}/.dotfiles/StumpWM-Config', '$ENV{HOME}/.stumpwm.d');
  }
}

# Installs backgrounds to /usr/local/share/backgrounds
sub install_backgrounds {
  say "We will install backgrounds now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '-p', '/usr/local/share/backgrounds');
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/backgrounds/*', '/usr/local/share/backgrounds');
}

# Sets up Xenodm configuration
sub setup_xenodm {
  say "We will set up XenoDM now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/config/*', '/etc/X11/xenodm/');
}

sub setup_apmd {
  say "We will set up APM-Autohook now!";
  say "Press ENTER to continue:";
  <STDIN>;
  system('doas', 'mkdir', '/etc/apm');
  system('doas', 'cp', '-rvf', '$ENV{HOME}/.dotfiles/APM-Config/*', '/etc/apm/');
}

# Compiles shuf re-implementation
sub compile_shuf {
  say "we will compile shuf now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/ibara/shuf.git', "$ENV{HOME}/.shuf");
  chdir "$ENV{HOME}/.shuf";
  system('./configure');
  system('make');
  system('doas', 'make', 'install');
}

# Compiles in my Slock Setup
sub compile_slock {
  say "we will compile suckless lock now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/Izder456/slock.git', "$ENV{HOME}/.slock");
  chdir "$ENV{HOME}/.slock";
  system('make');
  system('doas', 'make', 'install');
}

# Compiles afetch
sub compile_afetch {
  say "we will compile afetch now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/13-CF/afetch.git', "$ENV{HOME}/.afetch");
  chdir "$ENV{HOME}/.afetch";
  system('make');
  system('doas', 'make', 'install');
}

# Setup Battery Monitor
sub setup_battstat {
  say "we will set up battery monitor now!";
  say "press enter to continue:";
  <STDIN>;
  system('git', 'clone', 'https://github.com/imwally/battstat.git', "$ENV{HOME}/.battstat");
  chdir "$ENV{HOME}/.battstat";
  system('doas', 'install', './battstat', '/usr/local/bin');
}

# Updates XDG user directories
sub update_xdg_user_dirs {
  say "we will set xdg-user-dirs now!";
  say "press enter to continue:";
  <STDIN>;
  system('xdg-user-dirs-update');
  system('mkdir', '$ENV{HOME}/Projects');
}
