# Iz's OpenBSD Dotfiles

- Mainly for personal backups, but if ya wantem, use em.

- I ain't gonna support any mishaps on your machine, as this is a pet project.

# Setup:


## Do as root:
```
# usermod -aG wheel,operator,staff [your username]
# ftp -o /etc/doas.conf https://github.com/izder456/dotfiles/raw/main/doas.conf
```

## Do as user:
```
$ ftp -o ./setup.pl https://github.com/izder456/dotfiles/raw/main/setup.pl
$ chmod +x setup.pl
$ ./setup.pl
```
### Note

- when the script is installing deps, always choose the last number when given a version choice from `pkg_add`.

# DISCLAIMER:

- I am not responsible for any breakage on your system because of my code.

- If you are unsure, refer to [THE LICENSE](LICENSE.txt) to see how ~~not~~ seriously I take this.

- Use with caution.
