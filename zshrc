autoload -U colors && colors
PS1="%B%{$fg[yellow]%}[%{$fg[green]%}%n%{$fg[yellow]%}@%{$fg[cyan]%}%M%{$fg[yellow]%}:%{$fg[yellow]%}%~%{$fg[yellow]%}]"$'\n'"%{$fg[yellow]%}>%b "
stty stop undef
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY
unsetopt beep
bindkey -e
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

alias \
	ls='ls -v --color=auto --group-directories-first' \
	ll='ls -lhv --color=auto --group-directories-first' \
	la='ls -lhvA --color=auto --group-directories-first' \
	grep='grep --color=auto' \
	diff='diff --color=auto' \
	tree='tree -C' \
	cal='cal -ym' \
	cp='cp -v' \
	mv='mv -v' \
	rm='rm -vI' \
	mkdir='mkdir -pv' \
	bc='bc -lq' \
	ip='ip -c' \
	wttr='curl https://wttr.in' \
	mapscii='telnet mapscii.me' \
	mpva='mpv --no-video' \
	ytdl='yt-dlp' \
	re='zathura' \
	nsxiv='nsxiv -a' \
	units='units -H ""'

source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
