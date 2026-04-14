#!/usr/bin/env bash

source "$(dirname "$0")/bootstrap.sh"

# Git
read -p "Name: " FULL_NAME
read -p "Email address: " EMAIL_ADDRESS

git config --global user.name "$FULL_NAME"
git config --global user.email "$EMAIL_ADDRESS"

git config --global pull.rebase false
git config --global init.defaultBranch main

git config --global core.excludesfile ~/.gitignore_global

echo "✅ Git config"

# Dotfiles
echo "Creating symlinks..."

FILES="vimrc zshrc aliases functions exports starship.toml"
MAC_SPECIFIC_FILES="macos"

function createSymlinks() {
  for FILE in $@; do
    echo "  ~/.${FILE} --> ${DOTFILES}/.${FILE}"

    ln -sfn $DOTFILES/.$FILE ~/.$FILE
  done
}

createSymlinks $FILES

cp $DOTFILES/.gitignore_global ~/.gitignore_global

if [[ "$OSTYPE" == "darwin"* ]]; then
  createSymlinks $MAC_SPECIFIC_FILES
fi

echo "✅ Symlinks"

# Vundle
mkdir -p ~/.vim/plugin ~/.vim
rm -rf ~/.vim/plugin/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
cp $DOTFILES/.vim/plugins.vim ~/.vim/
vim +PluginInstall +qall

echo "✅ VIM"
