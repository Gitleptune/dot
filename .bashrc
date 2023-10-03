# vim: filetype=bash
source ~/.config/lf/lfcd
startfetch

# disable ctrl+s and ctrl+q
stty -ixon

# automagically cd into directory by typing its name
shopt -s autocd

# infinite history
HISTSIZE= HISTFILESIZE=

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# autocompletion but good
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

#####################################
#- how many aliases does one need? -#
#####################################

alias hw='clear && javac hw.java && clear && java hw'
alias deba='echo && cat ~/etc/deba && echo'

alias vore='devour'

alias vim='nvim'
alias neovim='nvim'

alias tracker='nvim ~/doc/nts/TRACKER.md'
alias watchlist='nvim ~/doc/ani/watchlist.md'

alias bsrc='nvim ~/.config/bspwm/bspwmrc'
alias brc='nvim ~/.bashrc'
alias sxrc='nvim ~/.config/sxhkd/sxhkdrc'
alias lfrc='nvim ~/.config/lf/lfrc'
alias nsrc='cd ~/.config/suck/nsxiv && sudo make clean install'
alias strc='cd ~/.config/suck/st && sudo make clean install'

alias lf='lfcd'

alias rd='ripdrag -xr'

alias cp='cp -riv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias mkdir='mkdir -pv'
alias tree='tree -C'
alias bc='bc -ql'
alias ffmpeg='ffmpeg -hide_banner'
alias diff='diff --color=auto'
alias free='free -h'
alias df='df -h'
alias dir='dir --color'
alias vdir='vdir --color'

alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias cal='cal -m'

alias p='sudo pacman'

alias bttui="bluetuith"

alias wifi="ping gnu.org"

# following xdg standards would be communism
alias wget="wget --hsts-file='$XDG_CACHE_HOME/wget-hsts'"

alias ls='ls --color -hN --group-directories-first'
alias la='ls --color -hNA --group-directories-first'
alias ll='ls --color -lAv --ignore=..'   # show long listing of all except ".."
alias grep="grep --color=auto"

alias nsxivrand="find . -type f | shuf | nsxiv -ai -S 2.5"
alias art="find ~/img/wal/pnt -type f | shuf | nsxiv -baif -S 15"
alias nsexiv='nsxiv -a'
alias nsxiv='nsxiv -a'
alias sxiv='nsxiv -a'

alias cp='cp -i'

alias q='exit'
alias :q='exit'
alias :q!='exit'
alias :q1='exit'
alias quit='exit'

alias lava='lavat -c blue -s 1 -r 3 -k red -R 2 -b 8'

alias undos="perl -pi -e 's/\r\n/\n/g'"

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'


## WHY IS MY BASH PROFILE NOT WORKING ##
export LS_COLORS='di=1;34:fi=0:ln=01;36:pi=33:so=01;35:bd=33;01:cd=33;01:or=31;01:mi=0:ex=01;32:*.~1~=09;01;41;30:*.~2~=09;01;41;30:*.~3~=09;01;41;30:*.~4~=09;01;41;30:*.~5~=09;01;41;30:*.~6~=09;01;41;30:*.~7~=09;01;41;30:*.~8~=09;01;41;30:*.~9~=09;01;41;30:*.~10~=09;01;41;30:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=33:*.jpeg=33:*.mjpg=33:*.mjpeg=33:*.gif=33:*.bmp=33:*.pbm=33:*.pgm=33:*.ppm=33:*.tga=33:*.xbm=33:*.xpm=33:*.tif=33:*.tiff=33:*.png=33:*.svg=33:*.svgz=33:*.mng=33:*.pcx=33:*.mpg=33:*.mpeg=33:*.webp=33:*.m2v=00;36:*.webm=00;36:*.ogm=00;36:*.mp4=00;36:*.m4v=00;36:*.mp4v=00;36:*.vob=00;36:*.qt=00;36:*.nuv=00;36:*.wmv=00;36:*.asf=00;36:*.rm=00;36:*.rmvb=00;36:*.flc=00;36:*.avi=00;36:*.fli=00;36:*.flv=00;36:*.gl=00;36:*.dl=00;36:*.xcf=00;36:*.xwd=00;36:*.yuv=00;36:*.cgm=00;36:*.emf=00;36:*.ogv=00;36:*.ogx=00;36:*.mkv=00;36:*.mov=00;36:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.md=03;32:*.txt=03;32:*.epub=03;32:*.djvu=03;32:*.pdf=03;32:*.ps=03;32:*.tex=03;32'

export FZF_DEFAULT_OPTS=" \
--color=bg+:#1b110e,bg:#261b17,spinner:#e35b15,hl:#f99666 \
--color=fg:#e4cbb3,header:#1b110e,info:#e35b15,pointer:#f99666 \
--color=marker:#e35b15,fg+:#f99666,prompt:#e4cbb3,hl+:#f99666"

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export PATH="$(du "${HOME:="/home/$USER"}/.local/bin" | cut -f2 | tr "\n" ":"):$PATH"

export BROWSER="vivaldi-stable"
export EDITOR="nvim"
export WM="bspwm"
export FONT="Fira Code"
export FM="lf"
export IMAGE="nsxiv"
export MANPAGER="nvim +Man!"
export MUSIC="ncmpcpp"
export READER="zathura"
export SYSMON="btop"
export TERMINAL="st"
export VIDEO="mpv"
export XDG_CURRENT_DESKTOP="bspwm"
export MPD_HOST=localhost

#export XDG_CACHE_HOME=${XDG_RUNTIME_DIR/cache"}
export GTK2_RC_FILES=${XDG_CONFIG_HOME/gtk-2.0/gtkrc}
export GNUPGHOME=${XDG_DATA_HOME/gnupg}
#export WGETRC=${XDG_CONFIG_HOME/wgetrc}
#export XAUTHORITY=${XDG_RUNTIME_DIR}/Xauthority
export GOPATH="${XDG_DATA_HOME:="$HOME/.local/share"}/go"
export NPM_HOME="${XDG_DATA_HOME:="$HOME/.local/share"}/npm"
export CARGO_HOME="${XDG_DATA_HOME:="$HOME/.local/share"}/cargo"
export FFMPEG_DATADIR="${XDG_DATA_HOME:="$HOME/.local/share"}/ffmpeg"
export NODE_REPL_HISTORY="${XDG_DATA_HOME:="$HOME/.local/share"}/node_history"
export TERMINFO_DIRS="${XDG_DATA_HOME:="$HOME/.local/share"}/terminfo:/usr/share/terminfo"

export LESSHISTFILE=-
export HISTFILE="$XDG_STATE_HOME"/bash/history

### prompt ###

PS1='🌻 \[\e[1m\]\w > \[\e[0m\]'
