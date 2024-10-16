eval "$(/opt/homebrew/bin/brew shellenv)"
export CLICOLOR=1
export EDITOR='vim'
export PS1=$'%F{white}%n%F{white}@%m:%F{cyan}%~%F{white}$ '

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
