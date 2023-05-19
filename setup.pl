#!/usr/bin/env perl

use strict;
use warnings;

# Function to prompt user for input
sub prompt {
    my ($query) = @_;
    local $| = 1; # enable autoflush to spit the prompt out immediately
    print $query;
    chomp(my $answer = <STDIN>); # read input
    return $answer;
};

# Function to prompt for yes/no input
sub prompt_yn {
    my ($query) = @_;
    my $answer = prompt("$query (Y/N): "); # read yes/no input, using prompt
    return lc($answer) eq 'y';
};

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
my @shdeps = ('zsh', 'bash', 'harfbuzz', 'neofetch', 'git', 'gmake', 'gawk', 'cmake', 'meson', 'upower', 'gcc', 'mercurial', 'feh', 'ffmpeg', 'yt-dlp', 'ImageMagick', 'gd', 'fftw3', 'fftw', 'automake', 'autoconf', 'neovim', 'dbus', 'htop', 'ncspot', 'rust', 'crystal', 'exa', 'pkg_mgr', 'scrot', 'py3-neovim', 'py3-pip', 'lynx', 'links', 'wget', 'curl', 'openssl','gmp', 'xz-utils', 'p7zip', 'bat', 'pkgconf', 'noto-emoji', 'ranger', 'ee', 'nano');
my @xdeps = ('sdorfehs', 'gtk2-murrine-engine', 'mpv', 'qutebrowser', 'abiword', 'gnumeric', 'pcmanfm', 'weechat', 'dunst', 'picom', 'rofi', 'leafpad', 'xarchiver', 'xkill', 'xedit', 'xpdf' 'lxappearance', 'claws-mail');
system('doas', 'pkg_add', \@shdeps, \@xdeps);

if (-d '~/.dotfiles') {
    chdir '~/.dotfiles';
    system('git', 'pull', '--ff-only');
} else {
    system('git', 'clone', 'https://github.com/izder456/dotfiles', '~/.dotfiles');
};


chdir '~/.dotfiles';
opendir(my $dh, $ENV{'HOME'}) or die "Cannot open directory: $!";
while (my $f = readdir $dh) {
    next unless $f =~ /^\..*$/;
    unlink "~/$f";
    symlink(".dotfiles/$f", "~/$f");
};
closedir $dh;


print "Setting up default shell...\n";
if (-d '~/.fizsh') {
    chdir '~/.fizsh';
    system('./configure');
    system('make');
    system('doas', 'make', 'install');
    system('cp', '~/.dotfiles/.fizshrc', '~/.fizsh/.fizshrc');
    system('chsh', '-s', '/usr/local/bin/fizsh');
} else {
    system('git', 'clone', 'https://github.com/zsh-users/fizsh.git', '~/.fizsh')
    chdir '~/.fizsh';
    system('./configure');
    system('make');
    system('doas', 'make', 'install');
    system('cp', '~/.dotfiles/.fizshrc', '~/.fizsh/.fizshrc')
    system('chsh', '-s', '/usr/local/bin/fizsh');
};

print ("Compiling in rust programs...( this is gonna take a bit :3 )\n");
my @rsdeps = ('wiki-tui', 'fd-find', 'sd', 'onefetch', 'tokei', 'zoxide', 'broot', 'du-dust' 'cargo-update-installed');
system('cargo', 'install', \@rsdeps);

print ("Compiling in GNU shuf re-implementation...\n");
system('git', 'clone', 'https://github.com/ibara/shuf.git', '~/.shuf');
chdir '~/.shuf';
system('./configure');
system('make');
system('doas', 'make', 'install');

print ("Compiling in afetch...\n");
system('git', 'clone', 'https://github.com/13-CF/afetch.git', '~/.afetch')
chdir '~/.afetch';
system('make');
system('doas', 'make', 'install');

if (-d )
mkdir '~/.ssh' unless -d '~/.ssh';
