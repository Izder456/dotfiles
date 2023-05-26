#!/usr/bin/env perl

use strict;
use warnings;

print "Welcome to iz's OpenBSD setup Perl script!\n";
print "This assumes you have installed the doas.conf file in the root of this project.\n";
print "Checking if doas.conf is installed...\n";

my $destination = "/etc/doas.conf"; # Destination file path

if (-e $destination) {
    print "The destination file $destination already exists.\n";
} else {
    print "The destination file $destination does not exist.\n";

    my $url = "https://github.com/izder456/dotfiles/raw/main/doas.conf"; # URL of the doas.conf file
    my $filename = "doas.conf"; # File name for saving the downloaded file

    print "Downloading the file to the current directory...\n";

    # Download the file using ftp command
    my $status = system("ftp -o $filename $url");

    if ($status == 0) {
        print "File downloaded successfully!\n";
        print "Please copy the file $filename to $destination manually.\n";
    } else {
        print "Failed to download the file. Please check your internet connection.\n";
    };
    exit();
};

# remove cruft installed by default in openbsd
print "Removing OpenBSD default Cruft...\n";
unlink qw(
    ~/.cshrc
    ~/.login
    ~/.mailrc
    ~/.profile
    ~/.Xdefaults
    ~/.cvsrc
);

print "Setting 0700 Perms for user's HOME...\n";
chmod(0700, $ENV{'HOME'});

print "Installing deps...\n";
our @shdeps = ('zsh', 'bash', 'harfbuzz', 'neofetch', 'git', 'gmake', 'gawk', 'cmake', 'meson', 'upower', 'gcc', 'mercurial', 'feh', 'ffmpeg', 'yt-dlp', 'ImageMagick', 'gd', 'fftw3', 'fftw', 'automake', 'autoconf', 'neovim', 'dbus', 'htop', 'ncspot', 'rust', 'crystal', 'exa', 'pkg_mgr', 'scrot', 'py3-neovim', 'py3-pip', 'lynx', 'links', 'wget', 'curl', 'openssl','gmp', 'xz-utils', 'p7zip', 'bat', 'pkgconf', 'noto-emoji', 'ranger', 'ee', 'nano');
our @xdeps = ('sdorfehs', 'xdg-user-dirs', 'xdg-utils', 'gtk2-murrine-engine', 'mpv', 'qutebrowser', 'abiword', 'gnumeric', 'pcmanfm', 'weechat', 'dunst', 'picom', 'rofi', 'leafpad', 'xarchiver', 'xkill', 'xedit', 'xpdf', 'lxappearance', 'claws-mail');
system('doas', 'pkg_add', @shdeps, @xdeps);

if (-d './.dotfiles') {
    chdir './.dotfiles';
    system('git', 'pull', '--ff-only');
} else {
    system('git', 'clone', 'https://github.com/izder456/dotfiles', './.dotfiles');
};

opendir(my $dh, $ENV{'HOME'}) or die "Cannot open directory: $!";

print "Symlinking Dotfiles...\n";
system('ln', '-svf', './.dotfiles/.*', '.');

chdir $dh;
print "Setting up default shell...\n";
if (-d '.fizsh') {
    chdir './.fizsh';
    system('./configure');
    system('make');
    system('doas', 'make', 'install');
    system('cp', './.dotfiles/.fizshrc', './.fizsh/.fizshrc');
    system('chsh', '-s', '/usr/local/bin/fizsh');
} else {
    system('git', 'clone', 'https://github.com/zsh-users/fizsh.git', '.fizsh');
    chdir './.fizsh';
    system('./configure');
    system('make');
    system('doas', 'make', 'install');
    system('cp', './.dotfiles/.fizshrc', './.fizsh/.fizshrc');
    system('chsh', '-s', '/usr/local/bin/fizsh');
};

chdir $dh;
print ("Installing backgrounds...\n");
system('doas', 'mkdir', '-p', '/usr/local/share/backgrounds');
system('doas', 'cp', '-rvf', './.dotfiles/backgrounds/*', '/usr/local/share/backgrounds');

chdir $dh;
print ("Setting up Xenodm...\n");
system('doas', 'cp', '-rvf', './.dotfiles/xenodm_config/*', '/etc/X11/xenodm');

chdir $dh;
print ("Installing Fonts...\n");
system('doas', 'cp', '-rvf', './.dotfiles/.fonts/*', '/usr/X11R6/lib/X11/fonts/TTF');
system('doas', 'fc-cache', '-fv');

chdir $dh;
print ("Compiling in rust programs...( this is gonna take a bit :3 )\n");
our @rsdeps = ('fd-find', 'sd', 'onefetch', 'tokei', 'zoxide', 'broot', 'du-dust', 'cargo-update-installed');
system('cargo', 'install', @rsdeps);

chdir $dh;
print ("Compiling in GNU shuf re-implementation...\n");
system('git', 'clone', 'https://github.com/ibara/shuf.git', './.shuf');
chdir './.shuf';
system('./configure');
system('make');
system('doas', 'make', 'install');

chdir $dh;
print ("Compiling in suckless-term...\n");
system('git', 'clone', 'https://github.com/izder456/st.git', './.st');
chdir './.st';
system('make');
system('doas', 'make', 'install');

chdir $dh;
print ("Compiling in afetch...\n");
system('git', 'clone', 'https://github.com/13-CF/afetch.git', './.afetch');
chdir './.afetch';
system('make');
system('doas', 'make', 'install');

chdir $dh;
closedir $dh;

system('xdg-user-dirs-update');
