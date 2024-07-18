use 5.36.0;
use warnings;
use experimental qw( switch );

# Constants
my $USERHOME = $ENV{HOME};
my $GITHUB   = "https://github.com";
my $SLEEPTIME = 2;
my $LOG_FILE = "/tmp/setup.log";

# Set PATH explicitly
$ENV{'PATH'} = '/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin';

# Log setup messages with timestamp
sub setup_log {
    my ($message) = @_;
    my $timestamp = gmtime();
    open my $fh, '>>', $LOG_FILE or die "Could not open $LOG_FILE: $!";
    print "[${timestamp}] $message\n";
    print $fh "[${timestamp}] $message\n";
    close $fh;
}

# Clean unnecessary files
sub clean {
    setup_log("Removing Cruft...");
    system('rex remove_default_cruft') == 0 or die "Failed to remove cruft\n";
}

# Ensure Lisp environment is set up
sub ensure_lisp {
    setup_log("Quicklisp Setup");
    system("doas pkg_add -m sbcl rlwrap") == 0 or die "Failed to install sbcl and rlwrap\n";
    system("ftp -o /tmp/quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp") == 0 or die "Failed to download quicklisp.lisp\n";
    system("ftp -o /tmp/quicklisp-setup.lisp $GITHUB/izder456/dotfiles/raw/main/quicklisp-setup.lisp") == 0 or die "Failed to download quicklisp-setup.lisp\n";
    system("sbcl --load /tmp/quicklisp.lisp --script /tmp/quicklisp-setup.lisp") == 0 or die "Failed to run quicklisp setup\n";
}

# Install port dependencies
sub ports_deps {
    setup_log("Installing port dependencies...");
    system("doas pkg_add -m -l ~/.pkglist") == 0 or die "Failed to install port dependencies\n";
}

# Install cargo dependencies
sub cargo_deps {
    setup_log("Installing cargo dependencies...");
    system("doas pkg_add rust") == 0 or die "Failed to install Rust\n";
    system("xargs cargo install < ~/.cargolist") == 0 or die "Failed to install cargo dependencies\n";
}

# Clone or update dotfiles repository and run setup scripts
sub config_install {
    setup_log("Cloning/Installing Dotfiles...");
    if (-d "$USERHOME/.dotfiles") {
        chdir("$USERHOME/.dotfiles") or die "Failed to change directory to .dotfiles\n";
        system("git pull --recurse-submodules --depth 1") == 0 or die "Failed to pull dotfiles\n";
    } else {
        system("git clone --depth 1 --recurse-submodules $GITHUB/Izder456/dotfiles.git $USERHOME/.dotfiles") == 0 or die "Failed to clone dotfiles\n";
    }
    system('rex configure_gtk');
    system('rex configure_icons');
    system("$USERHOME/.dotfiles/dfm/dfm install");
    system('doas cp ~/.dotfiles/doas.conf /etc/doas.conf');
}

# Setup FiZSH shell
sub setup_shell {
    setup_log("Setting up FiZSH...");
    system('rex configure_default_shell');
    system('rex compile_afetch');
}

# Setup background images
sub setup_backgrounds {
    setup_log("Installing Backgrounds...");
    system('rex install_backgrounds');
}

# Setup Emacs
sub setup_emacs {
    setup_log("Setting up Emacs...");
    system('rex configure_emacs');
}

# Setup Enhanced Motif WM
sub setup_emwm {
    setup_log("Setting up Enhanced Motif WM...");
    system('rex configure_emwm');
}

# Setup StumpWM
sub setup_stumpwm {
    ensure_lisp();
    setup_log("Setting up StumpWM...");
    system('rex configure_stumpwm');
}

# Miscellaneous setup tasks
sub setup_misc {
    setup_shell();
    setup_log("Miscellaneous setup...");
    system('rex compile_shuf');
    system('rex compile_slock');
    system('rex compile_st');
    system('rex compile_surf');
    system('rex compile_nxbelld');
    system('rex configure_apmd');
    system('rex install_backgrounds');
    system('rex update_xdg_user_dirs');
}

# Setup XenoDM
sub setup_xenodm {
    setup_log("Setting up XenoDM...");
    system('rex configure_xenodm');
}

# Check for internet connection
sub is_internet_up {
    setup_log("Checking internet connection...");
    system("nc -zw1 OpenBSD.org 443") == 0 or return 1;
    setup_log("Internet connection is up!");
    return 0;
}

# Ensure necessary tools are installed
sub ensure_needed {
    setup_log("Installing necessary tools: git and p5-Rex...");
    system("doas pkg_add -m p5-Rex git") == 0 or die "Failed to install git and p5-Rex\n";
    system("ftp -o \"$USERHOME/Rexfile\" $GITHUB/Izder456/dotfiles/raw/main/Rexfile") == 0 or die "Failed to download Rexfile\n";
}

# Ensure all prerequisites
sub do_ensure {
    is_internet_up() == 0 or die "No internet connection\n";
    ensure_needed();
}

do_ensure();

# Menu header text
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
  a) All (Recommended)
  r) Reload Menu
  q) Quit

EOF

# Display menu and handle user input
sub menu {
    while (1) {
        system("clear");
        print $HEADER_TEXT;
        print "Enter your selection: ";  # Move the input prompt to the same line
        my $selection = <STDIN>;
        chomp $selection;
        $selection ||= "r";
        {
	    no warnings;
	    given($selection) {
		when("1") { print("Selected Ports Deps...\n"); sleep($SLEEPTIME); ports_deps(); }
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
    }
}

menu();
