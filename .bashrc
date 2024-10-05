#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

HISTSIZE=
HISTFILESIZE=
HISTFILE="$HOME/conf/history/bash_$(uname -n)"

PS1='\h: \[\e[1m\]\w\[\e[0m\] '
PROMPT_COMMAND+=('printf "\033]0;%s: %s\007" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Alias definitions.
alias ..="cd .."
alias ls='ls -h --group-directories-first --color=auto'
alias ll="ls -Al"
alias l="ls -l"
alias gss="git status -s"
alias grep="grep --ignore-case --color=auto"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="t -a"
alias ende="trans en:de"
alias deen="trans de:en"
alias cat="bat"
alias y="yt-dlp"
alias yn="yt-dlp --no-download-archive"
alias q="mosh m720q -- tmux new -As 0" 
alias n="mosh netcup -- tmux new -As 0" 
alias em="emacsclient --create-frame"
alias vpn="/opt/cisco/secureclient/bin/vpnui"
alias ff="fastfetch"
alias stempty="rm -rf ~/.stversions/*"
alias emr="systemctl --user restart emacs.service"
alias tv="mpv --no-resume-playback --fullscreen=no http://M720q:9981/playlist"
alias vi="em"
alias vim="em"
alias plasma="/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland"
alias bb="rsync -a --progress /home/manu/lib/ /pvr/ /hdd"
alias x="startx ~/.xinitrc"
alias red="redshift -O 4500"
alias blue="redshift -x"
alias pm="pulsemixer"
alias idea="idea nosplash"

source /usr/share/fzf/key-bindings.bash

eval "$(zoxide init bash)"
eval "$(dircolors ~/.dircolors)"
