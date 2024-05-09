use 5.36.0;
use Rex -feature => ['1.4'];

# No Magic
our $USERHOME = "$ENV{HOME}";
our $GITHUB   = "https://github.com";

# Set PATH explicitly
$ENV{'PATH'} =
  '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

our $SLEEPTIME = 2;
our $LOG_FILE = "/tmp/setup.log";

# task to clean home dir
task 'remove_default_cruft', sub {
  unlink(
    "$USERHOME/.cshrc",   "$USERHOME/.login",     "$USERHOME/.mailrc",
    "$USERHOME/.profile", "$USERHOME/.Xdefaults", "$USERHOME/.cvsrc"
  );
  system( 'doas', 'chmod', '0700', "$USERHOME" );
};

# Configures and sets up the default shell
task 'configure_default_shell', sub {
  my %plugins = (
    "zsh-openbsd"     => "$GITHUB/sizeofvoid/openbsd-zsh-completions.git",
    "zsh-completions" => "$GITHUB/zsh-users/zsh-completions.git",
    "zsh-fzf"         => "$GITHUB/Aloxaf/fzf-tab.git",
    "zsh-suggest"     => "$GITHUB/zsh-users/zsh-autosuggestions.git",
    "zsh-256"         => "$GITHUB/chrissicool/zsh-256color.git",
    "zsh-fsh"         => "$GITHUB/zdharma-continuum/fast-syntax-highlighting.git"
  );
  keys %plugins;
  while (my($k, $v) = each %plugins) {
    my $clonedir = "$USERHOME/.$k";
    my $cloneuri = "$v";
    if ( -d $clonedir ) {
      chdir "$clonedir";
      system( 'git', 'pull' );
    } else {
      system( 'git', 'clone', "$cloneuri", "$clonedir" );
    }
  }

  # Grab fizsh src setup
  if ( -d "$USERHOME/.fizsh" ) {
    chdir "$USERHOME/.fizsh";
  } else {
    system( 'git', 'clone', "$GITHUB/zsh-users/fizsh.git", "$USERHOME/.fizsh" );
    chdir "$USERHOME/.fizsh";
  }
  system( './configure' );
  system( 'make' );
  system( 'doas', 'make', 'install' );
  system( 'cp', "$USERHOME/.dotfiles/.fizshrc", "$USERHOME/.fizsh/.fizshrc" );
  system( 'chsh', '-s', '/usr/local/bin/fizsh' );
};

task 'configure_gtk', sub {
  my %gtk = (
    "gruvbox-square-gtk" => "$GITHUB/jmattheis/gruvbox-dark-gtk.git",
    "gruvbox-round-gtk" => "$GITHUB/Fausto-Korpsvart/Gruvbox-GTK-Theme.git",
    "gruvbox-plus-gtk" => "$GITHUB/SylEleuth/gruvbox-plus-gtk.git",
  );
  keys %gtk;
  while (my($k, $v) = each %gtk) {
    my $clonedir = "/tmp/$k";
    my $cloneuri = "$v";
    if ( -d "$clonedir" ) {
      chdir "$clonedir";
      system( 'git', 'pull' );
    } else {
      system( 'git', 'clone', "$cloneuri", "$clonedir" );
    }
    if ( -d "$clonedir/themes" ) {
      system( 'cp', '-R', glob("$clonedir/themes/*"), "$USERHOME/.dotfiles/.themes/" );
    } elsif ( -d "$clonedir/Gruvbox-Plus-Dark" ) {
      system( 'cp', '-R', "$clonedir/Gruvbox-Plus-Dark", "$USERHOME/.dotfiles/.themes/" );
    } else {
      system( 'cp', '-R', "$clonedir", "$USERHOME/.dotfiles/.themes/" );
    }
    unlink("$clonedir");
  }
};

task 'configure_icons', sub {
  my %icons = (
    "gruvbox-round-icons" => "$GITHUB/Fausto-Korpsvart/Gruvbox-GTK-Theme.git",
    "gruvbox-square-icons" => "$GITHUB/jmattheis/gruvbox-dark-icons-gtk.git",
    "gruvbox-plus-icons" => "$GITHUB/SylEleuth/gruvbox-plus-icon-pack.git",
  );
  keys %icons;
  while (my($k, $v) = each %icons) {
    my $clonedir = "/tmp/$k";
    my $cloneuri = "$v";
    if ( -d "$clonedir" ) {
      chdir "$clonedir";
      system( 'git', 'pull' );
    } else {
      system( 'git', 'clone', "$cloneuri", "$clonedir" );
    }
    if ( -d "$clonedir/icons" ) {
      system( 'cp', '-R', glob("$clonedir/icons/*"), "$USERHOME/.dotfiles/.icons/" );
    } elsif ( -d "$clonedir/Gruvbox-Plus-Dark" ) {
      system( 'cp', '-R', "$clonedir/Gruvbox-Plus-Dark", "$USERHOME/.dotfiles/.icons/" );
    } else {
      system( 'cp', '-R', "$clonedir", "$USERHOME/.dotfiles/.icons/" );
    }
    unlink("$clonedir");
  }
};

# Configures and installs emacs
task 'configure_emacs', sub {
  if ( -d "$USERHOME/.emacs.d" ) {
    chdir "$USERHOME/.emacs.d";
  } else {
    system( 'ln', '-sf', "$USERHOME/.dotfiles/Emacs-Config", "$USERHOME/.emacs.d" );
  }
};

task 'configure_stumpwm', sub {
  if ( -d "$USERHOME/.stumpwm.d" ) {
    chdir "$USERHOME/.stumpwm.d";
  } else {
    system( 'ln', '-sf', "$USERHOME/.dotfiles/StumpWM-Config", "$USERHOME/.stumpwm.d" );
  }
};

task 'configure_emwm', sub {
    system( 'ln', '-sf', "$USERHOME/.dotfiles/Emwm-Config/.emwmrc", "$USERHOME/.emwmrc" );
    system( 'ln', '-sf', "$USERHOME/.dotfiles/Emwm-Config/.toolboxrc", "$USERHOME/.toolboxrc" );
    system( 'mkdir', '-p', "$USERHOME/.xresources.d" );
    system( 'ln', '-sf', "$USERHOME/.dotfiles/Emwm-Config/.xresources", "$USERHOME/.xresources.d/emwm" );
};

# Installs backgrounds to /usr/local/share/backgrounds
task 'install_backgrounds', sub {
  system( 'doas', 'mkdir', '-p', '/usr/local/share/backgrounds' );
  system( 'doas',  'cp', '-R', glob("$USERHOME/.dotfiles/backgrounds/*"), '/usr/local/share/backgrounds' );
};

# Sets up Xenodm configuration
task 'configure_xenodm', sub {
  system( 'doas', 'cp', '-R', glob("$USERHOME/.dotfiles/XenoDM-Config/*"), '/etc/X11/xenodm/' );
};

task 'configure_apmd', sub {
  system( 'doas', 'mkdir', '/etc/apm' );
  system( 'doas', 'cp', '-R', glob("$USERHOME/.dotfiles/APM-Config/*"), '/etc/apm/' );
};

# Compiles shuf re-implementation
task 'compile_shuf', sub {
  system( 'git', 'clone', "$GITHUB/ibara/shuf.git", "$USERHOME/.shuf" );
  chdir "$USERHOME/.shuf";
  system( './configure' );
  system( 'make' );
  system( 'doas', 'make', 'install' );
};

# Compiles in my Slock Setup
task 'compile_slock', sub {
  system( 'git', 'clone', "$GITHUB/Izder456/slock.git", "$USERHOME/.slock" );
  chdir "$USERHOME/.slock";
  system( 'make' );
  system( 'doas', 'make', 'install' );
};

# Compiles in my SURF Setup
task 'compile_surf', sub {
  system( 'git', 'clone', "$GITHUB/Izder456/surf.git", "$USERHOME/.surf-src" );
  chdir "$USERHOME/.surf-src";
  system( 'make' );
  system( 'doas', 'make', 'install' );
};

# Compiles in my ST Setup
task 'compile_st', sub {
  system( 'git', 'clone', "$GITHUB/Izder456/st.git", "$USERHOME/.st" );
  chdir "$USERHOME/.st";
  system( 'make' );
  system( 'doas', 'make', 'install' );
};

# Compiles afetch
task 'compile_afetch', sub {
  system( 'git', 'clone', "$GITHUB/13-CF/afetch.git", "$USERHOME/.afetch" );
  chdir "$USERHOME/.afetch";
  system( 'make' );
  system( 'doas', 'make', 'install' );
};

task 'compile_nxbelld', sub {
  $ENV{'AUTOCONF_VERSION'} = "2.69";
  $ENV{'AUTOMAKE_VERSION'} = "1.16";
  system( 'git', 'clone', "$GITHUB/dusxmt/nxbelld.git", "$USERHOME/.nxbelld" );
  chdir "$USERHOME/.nxbelld";
  system('autoreconf -i');
  system( './configure', '--prefix', "$USERHOME/.local");
  system( 'gmake' );
  system( 'gmake', 'install' );
};

# Updates XDG user directories
task 'update_xdg_user_dirs', sub {
  system( 'xdg-user-dirs-update' );
  system( 'mkdir', "$USERHOME/Projects" );
  system( 'doas', 'gdk-pixbuf-query-loaders', '--update-cache' );
};
