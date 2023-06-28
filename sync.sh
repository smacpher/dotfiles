set -eu

# assumes dotfiles are located in home directory
# be careful before running this!

if [ ${1:-"i"} == "r" ]
then
  rsync ~/.vimrc .vimrc
  rsync ~/.screenrc .screenrc
  rsync ~/.zshrc .zshrc

  echo "synced dotfiles to home directory"
else
  rsync .vimrc ~/.vimrc
  rsync .screenrc ~/.screenrc
  rsync .zshrc ~/.zshrc

  echo "synced dotfiles from home directory"
fi

