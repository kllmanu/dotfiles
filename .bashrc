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

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Alias definitions.
alias ..="cd .."
alias ls='ls -h --group-directories-first --color=auto'
alias ll="ls -Al"
alias l="ls -l"
alias bis="beet import -Asm"
alias bi="beet import -Am"
alias gss="git status -s"
alias grep="grep --ignore-case --color=auto"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="t -a"
alias clip="xclip -selection clipboard -i"
alias ende="trans en:de"
alias deen="trans de:en"
alias cat="bat"
alias y="yt-dlp"
alias yl="yt-dlp -x https://music.youtube.com/playlist?list=LM -o '~/Music/%(title)s.%(ext)s'"
alias x="startx"
alias finc="printf '\33]50;%s%d\007' 'xft:Hack:size=2'"
alias n="finc; nnn -C"
alias q="mosh m720q -- tmux new -As 0" 
alias xpp="GTK_THEME=adwaita xournalpp"
alias bl="bluetoothctl connect 68:B6:91:52:1F:71"
alias bd="bluetoothctl disconnect"
alias br="sudo systemctl restart bluetooth.service"
alias nb="newsboat -u ~/Documents/urls"
alias ps2="flatpak run net.pcsx2.PCSX2"
alias psp="flatpak run org.ppsspp.PPSSPP"

source /usr/share/fzf/key-bindings.bash
eval "$(arduino-cli completion bash)"
eval "$(zoxide init bash)"
