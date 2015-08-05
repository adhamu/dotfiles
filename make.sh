#!/bin/bash

if [ -z "$1" ]
then
    echo Usage: `basename $0` folder_name 1>&2
    exit 1
else
    # Variables
    dir=$1
    files="bash_profile bashrc bash_rc vimrc vim osx zshrc profile aliases functions exports"

    # Create new dotfiles directory
    cd ~
    mkdir -p $dir

    for file in $files; do
        # Move existing dotfiles to newly created directory
        echo "Moving any existing dotfiles to $dir..."
        mv ~/.$file ~/$dir/

        # Create symlink to moved dotfiles
        echo "Creating symlink to $file in home directory..."
        ln -sf ~/$dir/.$file ~/.$file
    done
fi