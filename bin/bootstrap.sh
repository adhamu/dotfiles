export DOTFILES="${HOME}/dotfiles"

if [[ ! -d $DOTFILES ]]; then
  echo "\033[0;31mThe dotfiles repository must be cloned into your home directory.\n\n🚫 Exiting setup."
  exit 1
fi
