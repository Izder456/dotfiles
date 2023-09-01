# Iz's OpenBSD Dotfiles

- Mainly for personal backups, but if ya wantem, use em.

- I ain't gonna support any mishaps on your machine, as this is a pet project.

## Crucial information

- while there *is* a setup script in this project, it is not meant to be plug-n-play. its a bare-bones setup that is **highly non-portable** and *will* take a little hackery to work 100%. I don't really find this as an issue cos I am perfectly comfortable melding it for my needs. 

- it is _**highly encouraged**_ that you read over the PERL script before following the [Setup](#setup-script) but for brevity's sake:
    - the setup script first forces perl v5.36 compliance
    - I define a few subroutines:
        1. checking for files, 
        2. downloading files, 
        3. removing default stuff,
        4. setting more strict home directory perms
        5. boilerplate for pkg_tools, 
        6. cloning the project itself to a predictable location: `$HOME/.dotfiles`,
        7. cloning my stumpwm configuration to a predicable location: `$HOME/.stumpwm.d`,
        8. symlinking the dotfiles,
        9. changing the default shell to [fizsh](https://github.com/zsh-users/fizsh.git),
        10. installing the [backgrounds](backgrounds) to `/usr/local/share/backgrounds`,
        11. installing the [configuration for xenodm](xenodm_config),
        12. setting up apmd to properly autohook the locker when laptop lid closes,
        13. installing [the fonts](.fonts) to `/usr/X11R6/lib/X11/fonts/TTF`,
        14. compiling and installing some rust programs i use daily,
        15. compiling and installing some reimplementation of [gnu shuf](https://github.com/ibara/shuf.git),
        16. compiling and installing [my suckless lock configuration/fork](https://github.com/Izder456/slock.git),
        17. compiling and installing the fetch program i use: [afetch](https://github.com/13-CF/afetch.git),
        18. setting up battstat for my modeline: [battstat](https://github.com/imwally/battstat.git),
        19. setting up my [DOOM Emacs Config](https://github/Izder456/Emacs-Config),
        20. and finally setting up `xdg-user-dirs`.
    - then, my main subroutine is defined where the script uses the previously defined subroutines to install deps and put things all together. most of the function is from the subroutines.

- by design, my script **does not do any performance tweaking**, the user is encouraged to refer to [the FAQ](https://openbsd.org/faq), [the manpages](https://man.openbsd.org), or the unofficial [openbsd handbook](https://www.openbsdhandbook.com), for that.

## Setup script
*read* [the crucial information](#crucial-information), and [the disclaimer](#disclaimer)

### Do as root:
```
# usermod -G wheel,operator,staff [your username]
# ftp -o /etc/doas.conf https://github.com/izder456/dotfiles/raw/main/doas.conf
```

### Do as user:
```
$ ftp -o ./setup.pl https://github.com/izder456/dotfiles/raw/main/setup.pl
$ chmod +x setup.pl
$ ./setup.pl
```
### Note:

- when the script is installing deps, always choose the last number when given a version choice from `pkg_add`.

# DISCLAIMER

- I am not responsible for any breakage on your system because of my code.

- If you are unsure, refer to [THE LICENSE](LICENSE.txt) to see how ~~not~~ seriously I take this.

- Use with caution.
