#!/usr/bin/env bash

source "$(dirname "$0")/bootstrap.sh"

# Git
read -p "Name: " FULL_NAME
read -p "Email address: " EMAIL_ADDRESS

git config --global user.name "$FULL_NAME"
git config --global user.email "$EMAIL_ADDRESS"

git config --global pull.rebase false
git config --global init.defaultBranch main

grep -qxF '.DS_Store' ~/.gitignore_global || echo '.DS_Store' >>~/.gitignore_global
grep -qxF 'yarn-error.log' ~/.gitignore_global || echo 'yarn-error.log' >>~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

echo "✅ Git config"

# Dotfiles
echo "Creating symlinks..."

function createSymlinks() {
    for FILE in $@; do
        echo "  ~/.${FILE} --> ${DOTFILES}/.${FILE}"

        mv ~/.$FILE ~/.$FILE.bak
        ln -sf $DOTFILES/.$FILE ~/.$FILE
    done
}

createSymlinks $FILES

if [[ "$OSTYPE" == "darwin"* ]]; then
    createSymlinks $MAC_SPECIFIC_FILES
fi

echo "✅ Symlinks"

# Fix "Beep" in macOS
mkdir -p ~/Library/KeyBindings
echo "{
    \"^@\\\UF701\" = \"noop:\";
    \"^@\\\UF702\" = \"noop:\";
    \"^@\\\UF703\" = \"noop:\";
}" >~/Library/KeyBindings/DefaultKeyBinding.dict

echo "✅ macOS VSCode Beep"

# Vundle
rm -rf ~/.vim/plugin/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
vim +PluginInstall +qall

echo "✅ VIM"
