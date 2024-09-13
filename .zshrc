autoload -Uz compinit && compinit
zstyle :compinstall filename "$HOME/.zshrc"

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY_TIME
setopt PROMPT_SUBST

# Prompt

precmd() { precmd() { echo; } }
git_is_repo() { git rev-parse --git-dir > /dev/null 2>&1; }
git_has_changes() { return $(git status --porcelain | wc -l); }
git_branch() { git rev-parse --abbrev-ref HEAD 2> /dev/null; }
git_prompt() { git_is_repo && (git_has_changes && echo " %B%F{green}$(git_branch)%f%b" || echo " %B%F{red}$(git_branch) *%f%b"); }
PROMPT="%F{red}%n%f:%B%F{yellow}%~%f%b\$(git_prompt)"$'\n'"%F{%(?.white.red)}%#%f "

# Environment

export CLICOLOR=1
export EDITOR=vim

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
