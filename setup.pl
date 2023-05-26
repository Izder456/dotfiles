#!/usr/bin/env perl

use 5.36;

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin';

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

# Installs dependencies using package manager
sub install_dependencies {
    my @dependencies = @_;
    system('doas', 'pkg_add', @dependencies);
}

# Updates dotfiles repository or clones if not present
sub update_or_clone_dotfiles {
    if (-d "$ENV{HOME}/.dotfiles") {
        chdir "$ENV{HOME}/.dotfiles";
        system('git', 'pull', '--ff-only');
    } else {
        system('git', 'clone', 'https://github.com/izder456/dotfiles', "$ENV{HOME}/.dotfiles");
    }
}

# Symlinks dotfiles from .dotfiles directory to home directory
sub symlink_dotfiles {
    system('ln', '-sf', glob("$ENV{HOME}/.dotfiles/.*"), "$ENV{HOME}/");
}

# Configures and sets up the default shell
sub configure_default_shell {
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

# Installs backgrounds to /usr/local/share/backgrounds
sub install_backgrounds {
    system('doas', 'mkdir', '-p', '/usr/local/share/backgrounds');
    system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/backgrounds/*"), '/usr/local/share/backgrounds');
}

# Sets up Xenodm configuration
sub setup_xenodm {
    system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/xenodm_config/*"), '/etc/X11/xenodm/');
}

# Installs fonts to /usr/X11R6/lib/X11/fonts/TTF
sub install_fonts {
    system('doas', 'cp', '-rvf', glob("$ENV{HOME}/.dotfiles/.fonts/*"), '/usr/X11R6/lib/X11/fonts/TTF/');
    system('doas', 'fc-cache', '-fv');
}

# Compiles rust programs using Cargo
sub compile_rust_programs {
    my @rust_dependencies = ('sd', 'onefetch', 'tokei', 'zoxide', 'broot', 'du-dust', 'cargo-update-installed');
    system('cargo', 'install', @rust_dependencies);
}

# Compiles shuf re-implementation
sub compile_shuf {
    system('git', 'clone', 'https://github.com/ibara/shuf.git', "$ENV{HOME}/.shuf");
    chdir "$ENV{HOME}/.shuf";
    system('./configure');
    system('make');
    system('doas', 'make', 'install');
}

# Compiles suckless-term (st)
sub compile_suckless_term {
    system('git', 'clone', 'https://github.com/izder456/st.git', "$ENV{HOME}/.st");
    chdir "$ENV{HOME}/.st";
    system('make');
    system('doas', 'make', 'install');
}

# Compiles afetch
sub compile_afetch {
    system('git', 'clone', 'https://github.com/13-CF/afetch.git', "$ENV{HOME}/.afetch");
    chdir "$ENV{HOME}/.afetch";
    system('make');
    system('doas', 'make', 'install');
}

# Setup Battery Monitor
sub setup_battstat {
    system('git', 'clone', 'https://github.com/imwally/battstat.git', "$ENV{HOME}/.battstat");
    chdir "$ENV{HOME}/.battstat";
    system('doas', 'install', './battstat', '/usr/local/bin');
}

# Updates XDG user directories
sub update_xdg_user_dirs {
    system('xdg-user-dirs-update');
}

# Main script
sub main {
    say("Welcome to iz's OpenBSD setup Perl script!");
    say("This assumes you have installed the doas.conf file located in the root of this project.");
    say("Checking if doas.conf is installed...");

    my $destination = "/etc/doas.conf";

    if (file_exists($destination)) {
        say("The destination file $destination already exists.");
    } else {
        say("The destination file $destination does not exist.");

        my $url = "https://github.com/izder456/dotfiles/raw/main/doas.conf";
        my $filename = "doas.conf";

        say("Downloading the file to the current directory...");

        if (download_file($url, $filename)) {
            say("File downloaded successfully!");
            say("Please copy the file $filename to $destination manually.");
        } else {
            say("Failed to download the file. Please check your internet connection.");
        }
        exit();
    }

    say("Removing OpenBSD default cruft...");
    remove_default_files();

    say("Setting 0700 permissions for user's HOME...");
    set_home_directory_perms();

    say("Installing dependencies...");
    my @shell_dependencies = ('zsh', 'bash', 'harfbuzz', 'neofetch', 'git', 'iftop', 'gmake', 'gawk', 'cmake', 'meson', 'upower', 'gcc', 'mercurial', 'feh', 'ffmpeg', 'yt-dlp', 'ImageMagick', 'gd', 'fftw3', 'fftw', 'automake', 'autoconf', 'neovim', 'dbus', 'htop', 'ncspot', 'rust', 'crystal', 'exa', 'pkg_mgr', 'scrot', 'py3-neovim', 'py3-pip', 'lynx', 'links', 'wget', 'curl', 'openssl', 'gmp', 'p7zip', 'bat', 'pkgconf', 'noto-emoji', 'ranger', 'ee', 'nano');
    my @xdeps = ('sdorfehs', 'xdg-user-dirs', 'xdg-utils', 'gtk2-murrine-engine', 'mpv', 'qutebrowser', 'abiword', 'gnumeric', 'pcmanfm', 'weechat', 'dunst', 'picom', 'rofi', 'leafpad', 'xarchiver', 'xpdf', 'lxappearance', 'claws-mail');
    install_dependencies(@shell_dependencies, @xdeps);

    update_or_clone_dotfiles();

    opendir(my $dh, $ENV{'HOME'}) or die "Cannot open directory: $!";
    say("Symlinking dotfiles...");
    symlink_dotfiles();

    say("Setting up default shell...");
    configure_default_shell();

    say("Installing backgrounds...");
    install_backgrounds();

    say("Setting up Xenodm...");
    setup_xenodm();

    say("Installing fonts...");
    install_fonts();

    say("Compiling Rust programs (this may take a while)...");
    compile_rust_programs();

    say("Compiling GNU shuf re-implementation...");
    compile_shuf();

    say("Compiling suckless-term...");
    compile_suckless_term();

    say("Compiling afetch...");
    compile_afetch();

    say("Setting up Battery Monitor...");
    setup_battstat();

    closedir $dh;

    update_xdg_user_dirs();
}

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin';

# Call the main subroutine
main();