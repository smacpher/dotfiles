# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$HOME/bin:/Users/smacpher/bin:/Users/smacpher/Library/Python/2.7/bin:$PATH

# To use llvm clang, uncomment the following line.
# export PATH=/usr/local/opt/llvm/bin:$HOME:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/smacpher/.oh-my-zsh"

plugins=(
  git,
  brew,
  sublime,
  virtualenv
)

VIRTUAL_ENV_DISABLE_PROMPT=1
function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('🐍 `basename $VIRTUAL_ENV`') '
}

# Configure oh-my-zsh.
source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}~ '

# Configure Alt + <-- and Alt + --> to skip words forwards and backwards
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# Configure node version manager (nvm).
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Configure pyenv.
eval "$(pyenv init -)"

# Configure virtualenvwrapper.
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=/Users/smacpher/Library/Python/2.7/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# source /Users/smacpher/Library/Python/2.7/bin/virtualenvwrapper.sh

# Configure virtualenvwrapper to use pyenv instead of virtualenv.
# pyenv virtualenvwrapper
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# To use llvm clang, also uncomment these lines.
export PATH=/usr/local/opt/llvm/bin:$PATH
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export CC=/usr/local/opt/llvm/bin/clang
export CXX=/usr/local/opt/llvm/bin/clang++

