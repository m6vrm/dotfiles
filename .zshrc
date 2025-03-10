bindkey -e

autoload -Uz compinit && compinit
autoload -Uz vcs_info

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':vcs_info:*' formats '%b %u%c'
zstyle ':vcs_info:*' check-for-changes true

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt PROMPT_SUBST

# Prompt

precmd() { vcs_info }
NEWLINE=$'\n'
PROMPT='%F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f${NEWLINE}$ '

# Environment

export CLICOLOR=1
export EDITOR=vim
export BAT_THEME=gruvbox-dark

# Bindings

bindkey '^R' history-incremental-search-backward

# Dotfiles

# git clone --bare git@github.com:m6vrm/dotfiles.git "$HOME/.dotfiles"
# alias dots='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
# dots checkout
# dots config status.showUntrackedFiles no
alias dots='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'

# Aliases

alias dev='cd "$HOME/Development"'
alias dl='cd "$HOME/Downloads"'
alias dt='cd "$HOME/Desktop"'

# Functions

cleanup() {
    if command -v pacman &> /dev/null; then
        set -x
        sudo pacman -Qqd | sudo pacman -Rsu --noconfirm -
        sudo paccache -rvk1
        sudo paccache -rvuk0
        sudo pacman -Sc --noconfirm
        set +x
    fi

    if command -v paru &> /dev/null; then
        set -x
        paru -Scda --noconfirm
        set +x
    fi

    if command -v brew &> /dev/null; then
        set -x
        brew autoremove
        brew cleanup --prune=0 -s
        set +x
    fi
}

compress() {
    local in=$1
    local out=$2
    ffmpeg -i "$in" -vcodec libx264 -crf 24 "$out"
}
