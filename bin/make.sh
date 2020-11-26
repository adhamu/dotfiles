#!/bin/bash

dotfiles_dir="$(dirname "$(pwd)")"

# Install Antigen
curl -L git.io/antigen > "$dotfiles_dir/antigen.zsh";

files="bash_profile bashrc bash_rc vimrc zshrc profile aliases functions exports"
mac_specific_files="macos"

function symlink() {
    echo "Symlinking .$2 to $1/.$2"
    ln -sf $1/.$2 ~/.$2
}

for file in $files; do
    rm ~/.$file
    symlink $dotfiles_dir $file
done

if [[ "$OSTYPE" == "darwin"* ]]; then
    for mac_specific_files in $mac_specific_file; do
        symlink $dotfiles_dir $mac_specific_file
    done
fi

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim

# Install Vundle plugins
vim +PluginInstall +qall
