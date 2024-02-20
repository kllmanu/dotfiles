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

PS1='\h: \[\e[1m\]\w\[\e[0m\] '
PROMPT_COMMAND+=('printf "\033]0;%s: %s\007" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

# Alias definitions.
alias ..="cd .."
alias ls='ls -h --group-directories-first --color=auto'
alias ll="ls -AlGg"
alias l="ls -lGg"
alias gss="git status -s"
alias grep="grep --ignore-case --color=auto"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="t -a"
alias clip="xclip -selection clipboard -i"
alias ende="trans en:de"
alias deen="trans de:en"
alias cat="bat"
alias y="yt-dlp"
alias x="startx"
alias finc="printf '\33]50;%s%d\007' 'xft:Hack:size=2'"
alias n="finc; nnn -C"
alias q="mosh m720q -- tmux new -As 0" 
alias xpp="GTK_THEME=adwaita xournalpp"
alias bl="bluetoothctl connect 68:B6:91:52:1F:71"
alias bd="bluetoothctl disconnect"
alias br="sudo systemctl restart bluetooth.service"
alias nb="newsboat -u ~/Documents/feeds"
alias pm="pulsemixer"

source /usr/share/fzf/key-bindings.bash
eval "$(arduino-cli completion bash)"
eval "$(zoxide init bash)"
