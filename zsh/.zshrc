# Load any of the following files that exist
function __load { [ -f "$1" ] && . "$1"; }
__load ~/.zle.zsh
__load ~/.fzf.zsh
__load ~/.colors.zsh
__load ~/.aliases.zsh
__load ~/.nix-profile/etc/profile.d/nix.sh

# Best prompt of all time
PROMPT='%F{cyan}%3~%f '

# Store history
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt sharehistory
setopt appendhistory
setopt incappendhistory

# Disable auto-correct
unsetopt CORRECT

# Less options
export LESS=mR

# Grep options
export GREP_OPTIONS='--color=always'

# Googler options
export GOOGLER_COLORS=cCdxxy

# Enable and configure zsh completions
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle -e ':completion:*:default' \
    list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")';
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Load local zsh config
__load ~/.local.zsh
