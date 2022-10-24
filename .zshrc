autoload -Uz compinit && compinit

# Prompt
setopt PROMPT_SUBST
precmd() { precmd() { echo; } }
git_branch() { git rev-parse --abbrev-ref HEAD 2> /dev/null; }
PROMPT="%B%F{blue}%~%f%b"$'\n'"%B%F{%(?.green.red)}%#%f%b "
RPROMPT="%F{yellow}\$(git_branch)%f"

# Environment
export CLICOLOR=1
export EDITOR=nvim

# Dotfiles
# first initialize bare repository with `git init --bare $HOME/.dotfiles`
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
