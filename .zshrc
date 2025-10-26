bindkey -e

autoload -Uz compinit && compinit
autoload -Uz vcs_info

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':vcs_info:*' formats '%b %u%c'
zstyle ':vcs_info:*' check-for-changes true

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt PROMPT_SUBST

precmd() { vcs_info }
NEWLINE=$'\n'
PROMPT='%F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f${NEWLINE}$ '

export CLICOLOR=1
export EDITOR=vim

# git clone --bare git@github.com:m6vrm/dotfiles.git "$HOME/.dotfiles"
# alias dots='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
# dots checkout
# dots config status.showUntrackedFiles no
alias dots='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
alias dev='cd "$HOME/Development"'
alias dl='cd "$HOME/Downloads"'
alias dt='cd "$HOME/Desktop"'

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

yt-mp4() {
    local url=$1
    yt-dlp --cookies-from-browser=firefox -t mp4 "$url"
}

yt-mp3() {
    local url=$1
    yt-dlp --cookies-from-browser=firefox -t mp3 "$url"
}
