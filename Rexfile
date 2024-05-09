use 5.36.0;
use Rex -feature => ['1.4'];
use warnings;
use feature qw( switch );
no warnings qw( experimental::smartmatch );

# No Magic
our $USERHOME = "$ENV{HOME}";
our $GITHUB   = "https://github.com";

# Set PATH explicitly
$ENV{'PATH'} =
  '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

our $SLEEPTIME = 2;
our $LOG_FILE = "/tmp/setup.log";

sub setup_log {
    my ($message) = @_;
    my $timestamp = gmtime();
    print "[${timestamp}] $message\n";
    open my $fh, '>>', $LOG_FILE or die "Could not open $LOG_FILE: $!";
    print $fh "[${timestamp}] $message\n";
    close $fh;
}

sub clean {
    setup_log("Removing Cruft...");
    system('rex remove_default_cruft');
}

sub ensure_lisp {
    setup_log("Quicklisp Setup");
    system("doas pkg_add -m sbcl rlwrap") == 0 or die "Failed to install sbcl and rlwrap\n";
    system("ftp -o /tmp/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp") == 0 or die "Failed to download quicklisp.lisp\n";
    system("ftp -o /tmp/quicklisp-setup.lisp https://github.com/izder456/dotfiles/raw/main/quicklisp-setup.lisp") == 0 or die "Failed to download quicklisp-setup.lisp\n";
    system("sbcl --load /tmp/quicklisp.lisp --script /tmp/quicklisp-setup.lisp") == 0 or die "Failed to run quicklisp setup\n";
}

sub ports_deps {
    setup_log("We will install port deps now!");
    system("doas pkg_add -m -l ~/.pkglist") == 0 or die "Failed to install port dependencies\n";
}

sub cargo_deps {
    system("doas pkg_add rust") == 0 or die "Failed to install Rust\n";
    setup_log("We will install cargo deps now!");
    system("xargs cargo install < ~/.cargolist") == 0 or die "Failed to install cargo dependencies\n";
}

sub config_install {
    setup_log("Cloning/Installing Dots...");
    if (-d "${USERHOME}/.dotfiles") {
        chdir("${USERHOME}/.dotfiles") or die "Failed to change directory to.dotfiles\n";
        system("git pull --recurse-submodules --depth 1") == 0 or die "Failed to pull dotfiles\n";
        chdir("..") or die "Failed to change directory back to home\n";
    } else {
        system("git clone --depth 1 --recurse-submodules https://github.com/Izder456/dotfiles.git ${USERHOME}/.dotfiles") == 0 or die "Failed to clone dotfiles\n";
    }
    system('rex configure_gtk');
    system('rex configure_icons');
    system( "${USERHOME}/.dotfiles/dfm/dfm install" );
    system('doas cp ~/.dotfiles/doas.conf /etc/doas.conf');
}

sub setup_shell {
    setup_log("Setting up FiZSH...");
    system('rex configure_default_shell');
    system('rex compile_afetch');
}

sub setup_backgrounds {
    setup_log("Installing Backgrounds...");
    system ('rex install_backgrounds');
}

sub setup_emacs {
    setup_log("Setting up Emacs...");
    system('rex configure_emacs');
}

sub setup_emwm {
    setup_log("Setting up Enhanced Motif WM...");
    system('rex configure_emwm');
}

sub setup_stumpwm {
    ensure_lisp();
    setup_log("Setting up StumpWM...");
    system('rex configure_stumpwm');
}

sub setup_misc {
    setup_shell();
    setup_log("Misc setup...");
    system('rex compile_shuf');
    system('rex compile_slock');
    system('rex compile_st');
    system('rex compile_surf');
    system('rex compile_nxbelld');
    system('rex configure_apmd');
    system('rex install_backgrounds');
    system('rex update_xdg_user_dirs');
}

sub setup_xenodm {
    setup_log("Setting up XenoDM...");
    # rex configure_xenodm
}

sub is_internet_up {
    setup_log("Checking if we have internet...");
    system("nc -zw1 OpenBSD.org 443") == 0 or return 1;
    setup_log("We have a Connection!");
    return 0;
}

sub ensure_needed {
    setup_log("We need git and p5-Rex from ports for functionality");
    setup_log("We will install p5-rex & git from ports now!");
    system("doas pkg_add -m p5-Rex git") == 0 or die "Failed to install git and p5-Rex\n";
    system("ftp -o \"$USERHOME\"/Rexfile https://github.com/Izder456/dotfiles/raw/main/Rexfile") == 0 or die "Failed to download Rexfile\n";
}

sub do_ensure {
    is_internet_up();
    ensure_needed();
}

do_ensure();

my $HEADER_TEXT = <<'EOF';
Srcerizder Dotfiles Setup
Options:
--------------------------
  1) Ports   4) StumpWM
  2) Cargo   5) Emacs
  3) Emwm    6) Xenodm
  7) Config  8) Misc
  9) Clean:
  

Other Options:
----------------
  a) All (Reccomended)
  r) Reload Menu
  q) Quit

Enter your selection:
EOF

sub menu {
    while (1) {
        system("clear");
        print $HEADER_TEXT;
        my $selection = <STDIN>;
        chomp $selection;
        if ($selection eq "") {
            $selection = "r";
        }
        given($selection) {
            when("1") { print("\nSelected Ports Deps...\n"); sleep($SLEEPTIME); ports_deps(); }
            when("2") { print("Selected Cargo Deps...\n"); sleep($SLEEPTIME); cargo_deps(); }
            when("3") { print("Selected Emwm Config...\n"); sleep($SLEEPTIME); setup_emwm(); }
            when("4") { print("Selected StumpWM Config...\n"); sleep($SLEEPTIME); setup_stumpwm(); }
            when("5") { print("Selected Emacs Config...\n"); sleep($SLEEPTIME); setup_emacs(); }
            when("6") { print("Selected XenoDM Config...\n"); sleep($SLEEPTIME); setup_xenodm(); }
            when("7") { print("Selected Install Configs...\n"); sleep($SLEEPTIME); config_install(); }
            when("8") { print("Selected Misc Setup...\n"); sleep($SLEEPTIME); setup_misc(); }
            when("9") { print("Selected Clean...\n"); sleep($SLEEPTIME); clean(); }
            when("a") { print("Running All...\n"); sleep($SLEEPTIME); clean(); config_install(); ports_deps(); cargo_deps(); setup_emwm(); setup_stumpwm(); setup_emacs(); setup_xenodm(); setup_misc(); }
            when("r") { next; }
            when("q") { print("\n"); exit; }
            default { print("\nInvalid selection\n"); sleep(1); }
        }
    }
};

menu();

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
