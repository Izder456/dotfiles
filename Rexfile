use 5.36.0;
use Rex -feature => ['1.4'];

# Set PATH explicitly
$ENV{'PATH'} =
'/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

# No Magic
USERHOME = "$ENV{HOME}";
GITHUB   = "https://github.com";

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
    say "We will install FiZSH now!";
    say "Press ENTER to continue:";
    <STDIN>;
    my %plugin = (
        "zsh-openbsd" => "$GITHUB/sizeofvoid/openbsd-zsh-completions.git",
        "zsh-fzf"     => "$GITHUB/Aloxaf/fzf-tab.git",
        "zsh-suggest" => "$GITHUB/zsh-users/zsh-autosuggestions.git",
        "zsh-256"     => "$GITHUB/chissicool/zsh-256color.git",
        "zsh-fsh"     => "$GITHUB/zdharma-continuum/fast-syntax-highlighting.git"
    );
    foreach $key ( keys %plugins ) {
        my $clonedir = "$USERHOME/.$key";
        my $cloneuri = $plugins{$key};
        if ( -d $clonedir ) {
            chdir("$clonedir");
            system( 'git', 'pull' );
        }
        else {
            system( 'git', 'clone', "$cloneuri", "$clonedir" );
        }
    }

    # Grab fizsh src setup
    if ( -d "$USERHOME/.fizsh" ) {
        chdir "$USERHOME/.fizsh";
    }
    else {
        system(
            'git',                         'clone',
            "$GITHUB/zsh-users/fizsh.git", "$USERHOME/.fizsh"
        );
        chdir "$USERHOME/.fizsh";
    }
    system('./configure');
    system('make');
    system( 'doas', 'make',                       'install' );
    system( 'cp', "$USERHOME/.dotfiles/.fizshrc", "$USERHOME/.fizsh/.fizshrc" );
    system( 'chsh', '-s',                         '/usr/local/bin/fizsh' );
};

# Configures and installs doom emacs
task 'configure_doom_emacs', sub {
    say "We will install Doom-Emacs now!";
    say "Press ENTER to continue:";
    <STDIN>;
    if ( -d "$USERHOME/.emacs.d" ) {
        chdir "$USERHOME/.emacs.d";
    }
    else {
        system( 'git', 'clone', '--depth', '1',
            '$GITHUB/hlissner/doom-emacs.git',
            "$USERHOME/.emacs.d/" );
        chdir "$USERHOME/.emacs.d";
    }
    system( "$USERHOME/.emacs.d/bin/doom",
        'install', '--config', '--env', '--fonts' );
    if ( -d "$USERHOME/.doom.d" ) {
        system( 'rm', '-rvf', "$USERHOME/.doom.d" );
    }
    system(
        'ln',                               '-sf',
        "$USERHOME/.dotfiles/Emacs-Config", "$USERHOME/.doom.d"
    );
    system( "$USERHOME/.emacs.d/bin/doom", 'sync' );
};

task 'update_or_clone_stumpwm', sub {
    say "We will set up StumpWM now!";
    say "Press ENTER to continue:";
    <STDIN>;
    if ( -d "$USERHOME/.stumpwm.d" ) {
        chdir "$USERHOME/.stumpwm.d";
    }
    else {
        system(
            'ln',                                 '-sf',
            "$USERHOME/.dotfiles/StumpWM-Config", "$USERHOME/.stumpwm.d"
        );
    }
};

# Installs backgrounds to /usr/local/share/backgrounds
task 'install_backgrounds', sub {
    say "We will install backgrounds now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'doas', 'mkdir', '-p', '/usr/local/share/backgrounds' );
    system(
        'doas', 'cp', '-rvf',
        glob("$USERHOME/.dotfiles/backgrounds/*"),
        '/usr/local/share/backgrounds'
    );
};

# Sets up Xenodm configuration
task 'setup_xenodm', sub {
    say "We will set up XenoDM now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'doas', 'cp', '-rvf', glob("$USERHOME/.dotfiles/XenoDM-Config/*"),
        '/etc/X11/xenodm/' );
};

task 'setup_apmd', sub {
    say "We will set up APM-Autohook now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'doas', 'mkdir', '/etc/apm' );
    system( 'doas', 'cp', '-rvf', glob("$USERHOME/.dotfiles/APM-Config/*"),
        '/etc/apm/' );
};

# Compiles shuf re-implementation
task 'compile_shuf', sub {
    say "We will compile shuf now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'git', 'clone', '$GITHUB/ibara/shuf.git', "$USERHOME/.shuf" );
    chdir "$USERHOME/.shuf";
    system('./configure');
    system('make');
    system( 'doas', 'make', 'install' );
};

# Compiles in my Slock Setup
task 'compile_slock', sub {
    say "We will compile suckless lock now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'git', 'clone', '$GITHUB/Izder456/slock.git', "$USERHOME/.slock" );
    chdir "$USERHOME/.slock";
    system('make');
    system( 'doas', 'make', 'install' );
};

# Compiles in my SURF Setup
task 'compile_surf', sub {
    say "We will compile suckless surf now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'git', 'clone', '$GITHUB/Izder456/surf.git',
        "$USERHOME/.surf-src" );
    chdir "$USERHOME/.surf-src";
    system('make');
    system( 'doas', 'make', 'install' );
};

# Compiles in my ST Setup
task 'compile_st', sub {
    say "We will compile suckless term now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'git', 'clone', '$GITHUB/Izder456/st.git', "$USERHOME/.st" );
    chdir "$USERHOME/.st";
    system('make');
    system( 'doas', 'make', 'install' );
};

# Compiles afetch
task 'compile_afetch', sub {
    say "We will compile afetch now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system( 'git', 'clone', '$GITHUB/13-CF/afetch.git', "$USERHOME/.afetch" );
    chdir "$USERHOME/.afetch";
    system('make');
    system( 'doas', 'make', 'install' );
};

# Setup Battery Monitor
task 'setup_battstat', sub {
    say "We will set up battery monitor now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system(
        'git',                          'clone',
        '$GITHUB/imwally/battstat.git', "$USERHOME/.battstat"
    );
    chdir "$USERHOME/.battstat";
    system( 'doas', 'install', './battstat', '/usr/local/bin' );
};

# Updates XDG user directories
task 'update_xdg_user_dirs', sub {
    say "We will set xdg-user-dirs now!";
    say "Press ENTER to continue:";
    <STDIN>;
    system('xdg-user-dirs-update');
    system( 'mkdir', "$USERHOME/Projects" );
};
