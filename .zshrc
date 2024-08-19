#!/usr/bin/env zsh

##
# Check if TTY
##
if [ -n $DISPLAY ]; then
    export TERM=wsvt25
fi

##
# ENV VARS
##
export PAGER="less"
export EDITOR="vi"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

##
# export $PATH
##
export PATH=$PATH:/usr/games:/usr/ports/infrastructure/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/go/bin

##
# Lazy Loading
##
source ~/.zshrc.d/defer/zsh-defer.plugin.zsh

##
# Vim binds
##
zsh-defer ~/.zshrd.d/vim-mode/zsh-vi-mode.plugin.zsh

##
# Autoload zmv
##
zsh-defer autoload -Uz zmv

##
# Setup Completions
##
zsh-defer autoload -U compinit
zsh-defer compinit
zsh-defer autoload -U bashcompinit
zsh-defer bashcompinit

fpath=($HOME/.zshrc.d/openbsd/completions $HOME/.zshrc.d/completions/src $fpath)
setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD
zsh-defer eval "$(register-python-argcomplete pipx)"

##
# Java Stuff
##
export PATH=$PATH:/usr/local/jdk-17/bin
export JAVA_HOME=/usr/local/jdk-17/

##
# Go Stuff
##
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

##
# Autopair
##
zsh-defer source ~/.zshrc.d/autopair/autopair.zsh
zsh-defer autopair-init

##
# Syntax Highlight
##
zsh-defer source ~/.zshrc.d/fsh/fast-syntax-highlighting.plugin.zsh

##
# Suggestions
##
zsh-defer source ~/.zshrc.d/suggest/zsh-autosuggestions.plugin.zsh

##
# History substring search
##
zsh-defer source ~/.zshrc.d/substring/zsh-history-substring-search.plugin.zsh
HISTFILE="$HOME/.zshrc.d/.history"
HISTSIZE=10000000
SAVEHIST=10000000

##
# FZF-Zsh
##
if command -v fzf &> /dev/null; then
	source ~/.zshrc.d/fzf/fzf-tab.plugin.zsh
	export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#A89984,bg:#282828,hl:#83A598
    --color=fg+:#BDAE93,bg+:#1D2021,hl+:#8EC07C
    --color=info:#D3869B,prompt:#FABD2F,pointer:#FABD2F
    --color=marker:#B16286,spinner:#B8BB26,header:#FE8019'
fi

##
# 256-Color
##
zsh-defer source ~/.zshrc.d/256/zsh-256color.plugin.zsh

##
# Ruby Stuff
##
export GEM_HOME="$HOME/.gems"
export PATH=$PATH:$HOME/.gems/bin

##
# Alias for muscle memory
##
alias sudo="doas"
alias su="echo 'did you mean to run doas -s? '"

##
# Alias for CD
##
if command -v zoxide &> /dev/null; then
	zsh-defer eval "$(zoxide init --cmd cd zsh)"
fi

##
# Alias for listing files
##
if command -v eza &> /dev/null; then
	alias ls="eza --icons=auto -Hh"
	alias la="eza --icons=auto -ah"
	alias ll="eza --icons=auto -lh"
	alias lh="eza --icons=auto -lAh"
	alias tree="eza --icons=auto -Th"
fi

##
# Alias for parsing
##
if command -v bat &> /dev/null; then
	alias cat="bat --theme=gruvbox-dark --paging=never"
	alias bat="bat --theme=gruvbox-dark"
fi
if command -v rg &> /dev/null; then
	alias rgrep="rg"
fi

##
# Alias for editing
##
alias edit=$EDITOR
alias vedit=$VISUAL
alias doasedit="doas $EDITOR"
alias sudoedit="doas $EDITOR"

##
# Alias for sysfetch
##
alias f="neofetch --off"
alias F="neofetch -L"

##
# Alias for sysstats
##
alias i="top"
alias H="htop"

##
# Alias for media
##
alias audio-dlp="yt-dlp -x --audio-quality 0 --audio-format vorbis \
	--concurrent-fragments 5"
alias video-dlp="yt-dlp --write-subs --sub-format srt --remux-video mkv \
	--embed-subs --concurrent-fragments 5"
alias tidal-dlp="tidal-dl -o /home/izder456/Music -q Master -r P1080 -l "

##
# Prompt
##
PROMPT="%B%F{yellow}%~%f%b%B % %b"

##
# Bat
##

if command -v bat &> /dev/null; then
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	alias bathelp='bat --plain --language=help'
fi

# Manpager
function man {
	command man "$@" | eval ${MANPAGER}
}

# Help Page
function help {
	"$@" --help 2>&1 | bathelp
}


##
# Tere config
##
function tere {
	local result=$(command tere "$@")
	[ -n "$result" ] && cd -- "$result"
}

##
# Functions For OpenBSD
##
function src {
	local _usage
	_usage="src [file]"
	[ -z $1 ] && echo $_usage
	[ ! -z $1 ] &&
		cd /usr/src/*/$1 || return
}

function port {
	local _usage
	_usage="port [port]"	
	[ -z $1 ] && echo $_usage
	[ ! -z $1 ] &&
		cd /usr/ports/*/$1 2>/dev/null ||
			cd /usr/ports/*/*/$1 2>/dev/null ||
			return
}

function pclean {
	rm -v **/*.orig **/*(.NL0)
}

function revert_diffs {
	zmv -v '**/*.orig' '${f%.orig}'
}

function cdw {
	cd $(make show=WRKSRC)
}

function maintains {
local _usage
	_usage="maintains [port]"
	[ -z $1 ] && echo $_usage
	[ ! -z $1 ] &&
		(
			cd /usr/ports/*/$1 >/dev/null 2>&1 &&
				make show=MAINTAINER ||
				echo "No port '/usr/ports/*/$1'"
		)
}

##
# the r/unixporn rite of passage
##
if command -v crfetch &> /dev/null; then
	crfetch
fi

zsh-defer . $HOME/.shellrc.load
