if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/manu/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:/home/manu/anaconda3/bin"
export EDITOR="vim"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode disabled

plugins=(git ripgrep fzf fd zoxide httpie pass)

source $ZSH/oh-my-zsh.sh

alias ls='ls -h --group-directories-first --color=auto'
alias ll="ls -Al"
alias l="ls -l"
alias bis="beet import -Asm"
alias bi="beet import -Am"
alias grep="grep --ignore-case --color=auto"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="t -a"
alias clip="xclip -selection clipboard -i"
alias ende="trans en:de"
alias deen="trans de:en"
alias cat="batcat"
alias y="yt-dlp"
alias yl="yt-dlp -x https://music.youtube.com/playlist?list=LM -o '~/Downloads/likes/%(title)s.%(ext)s'"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
