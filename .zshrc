export PATH=$HOME/bin:/usr/local/bin:$PATH
export PROJECT_HOME=$HOME/clones

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  python
  virtualenv
  virtualenvwrapper
)

VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('🐍 `basename $VIRTUAL_ENV`') '
}

source $ZSH/oh-my-zsh.sh
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

PROMPT='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}$(kube_ps1)~ '

# Define custom aliases.
# Override the default ctags that MacOS ships with to use exuberant ctags.
alias ctags="`brew --prefix`/bin/ctags"

# Show git recent branches.
alias grb='git branch --sort=-committerdate | head -10'

# Copy current branch name into system clipboard.
alias gcbn='git rev-parse --abbrev-ref HEAD | pbcopy'

# Rebase off of the latest version of main.
alias grd='git checkout main && git pull && git checkout - && git pull && git rebase main'

alias k='kubectl'

set-env () {
    set -o allexport
    source $1
    set +o allexport
}

